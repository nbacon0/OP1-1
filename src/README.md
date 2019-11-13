Development platform for OP1:1
==============================

This is out development platform code. It's currently based on `FreeRTOS` and uses ST's HAL library, but this isn't a hard requirement if anybody has other suggestions.

Compiling on Linux
------------------

Only compiling on Linux is supported right now. If anybody wants to make a build system for Windows, that'd be great.

Follow the steps in `COMPILING.md` to install all the necessary tools for the build enviornment.

One you've got everything installed, compiling is as simple as running:
```sh
make
```

If you want to clean and compile the entire project from scratch, run:
```sh
make clean
make
```

To flash the compiled binary onto the dev board, make sure you've got your STLink device plugged in and run:
```sh
make flash
```

Debugging
---------

TODO

FreeRTOS Setup
--------------

We're using `FreeRTOSv10.2.1` and the port from `GCC/ARM_CM7`. Only the minimal amount of files from FreeRTOS has been included, so if there's anything missing, copy it from the FreeRTOS v10.2.1 source.

Currently, the `heap_4.c` memory manager is used, which supports both allocating and freeing. It may not be necessary to use this more complex memory manager, and we could probably use the allocation-only (`heap_1.c`) or basic allocation+free (`heap_2.c`) manager.

References
----------

https://freertos.org/
