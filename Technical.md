Technical Work Spec
===================

This document is meant for sharing implementation details and architectural plans for the system.

All information that is finalised should be removed from this document and placed into its own document.

Do not use this document as a reference.

Prototype PCB
-------------

I suggest building the prototype PCB into modules to save on development costs when prototyping.

The following modules are needed:
* Power board
* Coil control board (X, Z and Tilt)
* Focus and Tracking
* Stepper control
* Digital logic

The modules can be connected using a perfboard, direct wiring or a dedicated wiring PCB. For now, we will just build the modules and use direct wiring.

#### Power Board

The power board needs to provide the following voltages:

* +8V
* +5V
* -5V
* +3.3V

The `+8V` is needed by the KEM410 OPU. `+/-5V` are needed by the opamps. `+3.3V` is needed for the digital logic.

We will use a `+12V` barrel jack for input power, and use simple step-down converters to generate the other rails.

#### Coil Control

We can base this on the circuit in the biosensing paper. The biosensing board generates the analouge X, Z and T signals externally, however the voltage is unknown.

#### Focus and Tracking

Can also be based off the biosensing circuit.

#### Stepper control

The IC used in the biosensing circuit is not recommended for new designs. We should make our own circuit for this.

#### Digital logic

The biosensing circuit uses an Atmega168, however the programming is not publicly available. There's no reason to use this part of the biosensing circuit.

Instead, we will use the STM32F7 dev boards.

There's no need to build any custom board for the digital logic control.
