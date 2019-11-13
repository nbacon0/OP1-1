//
//
//
//
//
//

// Scheduler include files.
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "semphr.h"

#define QUEUE_LENGTH 1

// The queue used by both tasks.
static QueueHandle_t xQueue = NULL;

// Simple timer
static TimerHandle_t timerHandle;

// Configure the hardware as necessary to run this demo.
static void prvSetupHardware();

// Configure the system clock for maximum speed.
static void prvSystemClockConfig();

// Prototypes for the standard FreeRTOS callback/hook functions implemented within this file.
void vApplicationMallocFailedHook();
void vApplicationIdleHook();
void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName );
void vApplicationTickHook();

// Application spesific prototypes
static void simpleTimerCallback(TimerHandle_t xTimer);

// When something goes terribly wrong, this will set a warning LED and stall
void hardFail()
{
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_SET);
	for(;;);
}

// Main entry point (for C)
int main()
{
	// Configure the hardware ready to run the demo.
	prvSetupHardware();

	// Create the queue
	xQueue = xQueueCreate(QUEUE_LENGTH, sizeof( uint32_t ) );

	if(xQueue == NULL) hardFail();

	long x = 0;
	timerHandle = xTimerCreate(
		"timer1Sec",         // name
		pdMS_TO_TICKS(500), // period/time
		pdTRUE,              // auto reload
		(void*)x,            // Timer ID
		simpleTimerCallback  // Callback
	);

	// Did we manage to make the timer?
	if(timerHandle == NULL) hardFail();

	// Start timer
	if(xTimerStart(timerHandle, x) != pdPASS) hardFail();

	// Start the tasks and timer running.
	vTaskStartScheduler();
	
	/* If all is well, the scheduler will now be running, and the following
	line will never be reached.  If the following line does execute, then
	there was insufficient FreeRTOS heap memory available for the Idle and/or
	timer tasks to be created.  See the memory management section on the
	FreeRTOS web site for more details on the FreeRTOS heap
	http://www.freertos.org/a00111.html. */
	hardFail();

	return 0;
}

static void prvSetupHardware()
{
	GPIO_InitTypeDef  GPIO_InitStruct;

	HAL_Init();

	// Configure Flash prefetch and Instruction cache through ART accelerator.
	#if( ART_ACCLERATOR_ENABLE != 0 )
	{
		__HAL_FLASH_ART_ENABLE();
	}
	#endif // ART_ACCLERATOR_ENABLE

	// Set Interrupt Group Priority
	HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);

	// Init the low level hardware.
	HAL_MspInit();

	// Configure the System clock to have a frequency of 200 MHz
	prvSystemClockConfig();

	// Enable GPIOB  Clock (to be able to program the configuration
	// registers) and configure for LED output.
	__GPIOG_CLK_ENABLE();
	__HAL_RCC_GPIOB_CLK_ENABLE();
	__HAL_RCC_GPIOH_CLK_ENABLE();

	GPIO_InitStruct.Pin = GPIO_PIN_6;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
	HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_RESET);

	GPIO_InitStruct.Pin = GPIO_PIN_7;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
	HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_RESET);

	GPIO_InitStruct.Pin = GPIO_PIN_4;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
	HAL_GPIO_Init(GPIOH, &GPIO_InitStruct);
	HAL_GPIO_WritePin(GPIOH, GPIO_PIN_4, GPIO_PIN_RESET);

	// MCO2 : Pin PC9
	HAL_RCC_MCOConfig(RCC_MCO2, RCC_MCO2SOURCE_SYSCLK, RCC_MCODIV_1);
}
/*-----------------------------------------------------------*/

static void prvSystemClockConfig()
{
	RCC_OscInitTypeDef RCC_OscInitStruct;
	RCC_ClkInitTypeDef RCC_ClkInitStruct;

	__PWR_CLK_ENABLE();

	__HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
	RCC_OscInitStruct.HSEState = RCC_HSE_ON;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
	RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
	RCC_OscInitStruct.PLL.PLLM = 8;
	RCC_OscInitStruct.PLL.PLLN = 432;
	RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
	RCC_OscInitStruct.PLL.PLLQ = 7;
	HAL_RCC_OscConfig(&RCC_OscInitStruct);

	HAL_PWREx_ActivateOverDrive();

	RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
	                          |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
	RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;
	HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_7);

	HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

	HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

	/* SysTick_IRQn interrupt configuration */
	HAL_NVIC_SetPriority(SysTick_IRQn, 15, 0);
}
/*-----------------------------------------------------------*/

void vApplicationMallocFailedHook()
{
	/* Called if a call to pvPortMalloc() fails because there is insufficient
	free memory available in the FreeRTOS heap.  pvPortMalloc() is called
	internally by FreeRTOS API functions that create tasks, queues, software
	timers, and semaphores.  The size of the FreeRTOS heap is set by the
	configTOTAL_HEAP_SIZE configuration constant in FreeRTOSConfig.h. */

	// Force an assert.
	configASSERT((volatile void*) NULL);
}
/*-----------------------------------------------------------*/

void vApplicationStackOverflowHook(TaskHandle_t pxTask, char *pcTaskName)
{
	(void) pcTaskName;
	(void) pxTask;

	/* Run time stack overflow checking is performed if
	configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook
	function is called if a stack overflow is detected. */

	/* Force an assert. */
	configASSERT((volatile void*) NULL);
}
/*-----------------------------------------------------------*/

void vApplicationIdleHook()
{
	volatile size_t xFreeHeapSpace;

	/* This is just a trivial example of an idle hook.  It is called on each
	cycle of the idle task.  It must *NOT* attempt to block.  In this case the
	idle task just queries the amount of FreeRTOS heap that remains.  See the
	memory management section on the http://www.FreeRTOS.org web site for memory
	management options.  If there is a lot of heap memory free then the
	configTOTAL_HEAP_SIZE value in FreeRTOSConfig.h can be reduced to free up
	RAM. */
	xFreeHeapSpace = xPortGetFreeHeapSize();

	/* Remove compiler warning about xFreeHeapSpace being set but never used. */
	(void) xFreeHeapSpace;
}
/*-----------------------------------------------------------*/

void vAssertCalled(uint32_t ulLine, const char *pcFile)
{
	volatile unsigned long ul = 0;

	(void) pcFile;
	(void) ulLine;

	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_SET);

	taskENTER_CRITICAL();
	{
		/* Set ul to a non-zero value using the debugger to step out of this
		function. */
		while(ul == 0)
		{
			__NOP();
		}
	}
	taskEXIT_CRITICAL();
}
/*-----------------------------------------------------------*/

void vApplicationTickHook()
{

}
/*-----------------------------------------------------------*/

static void simpleTimerCallback(TimerHandle_t xTimer)
{
	HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_6);
}


