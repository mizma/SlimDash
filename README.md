# SlimDash

ErgoDash inspired low-profile key switch keyboard with embedded RP2040

## Still in development

Below are my personal memos of what needs to get done or what
is needed for design decisions.

### TODOs

* ergogen (part 1) → DONE
  * create general outline of the PCB and plates.
  * create base PCB layout with the switch and Diode footprints
* KiCAD
  * create matching schematic
  * import the PCB design from ergogen and match with schematic
  * adjust footprints and part BOM
    * smt diode needs to be matched for proper size BOM
  * Import the schematic from ergoSHIFT rev2
    * consider adding surge protect to USB using C15879 or C283483
      * D+, D- and VBUS merits from protection.
    * consider using C6186 for voltage regulator instead?
  * Place parts
* ergogen
  * after placing PCB parts, create cutout for the right backplate for the PCB parts
    * RP2040 stuff
    * Flash memory
    * USB-C connector
    * XTAL
    * power
    * passive components(RC)
    * throughhole mounted parts (TRRS Jack, type C and tactile switch for reset
      and boot)
  * after placing PCB parts, create cutout for the left backplate for the PCB parts
    * throughhole mounted parts (TRRS Jack, type C and tactile switch for reset
      and boot)
  * adjust outer dimensions to fit the parts if necessary.
* QMK configuration
  * Make the `info.json`, `config.h` and `rules.mk`
    * First make the info.json
    * add what ever is not configurable on info.json using config.h and rules.mk
      using the function manuals
    * Following Needs configuration
      * Key MATRIX
      * Hardware config (processor, bootloader type etc.)
      * Firmware config
      * USB
      * Layouts
      * Features
        * Split Keyboard
        * RGB Matrix (if I decide to add them)
        * bootmagic: false?
        * mousekey: true
        * extrakey: true
        * nkro: true
        * command: false
        * console: false

#### Outstanding design choices (Hardware Design)

Below are some desing choices that need deciding.

* TRRS Wiring for Split key and how this should be configured
  * Handedness should be detectable using USB Host detection
    * use `#define MASTER_LEFT` in config.h -> how to do this on info.json?
  * Using PIO
    * for RP2040, PIO can be used on any pin.
    * Full Duplex? or Half Duplex?
    * For Full Duplex, TX and RX needs to be swapped on left and right PCB.
      * Should I mess with footprints to cross wire TRRS on left and right on the
        reversible design of the PCB?
      * A: apparently not.  Needs PCB side flipping.
        * Probably better making my own reversible/crosswire TRRS footprint.
    * Pull up resistors? when it is/isn't needed?
      * HALF Duplex uses open drain and require pull up resistors, but FULL Duplex
        doesn't.
      * RP2040 PIO can run HALF duplex with internal pull ups? and is not required.
* RGB MATRIX wiring and how this should be configured

## Acknowlegements

* [ErgoDash by omkbd](https://github.com/omkbd/ErgoDash)
  * Inspiration for this keyboard
* [ergogen](https://github.com/ergogen/ergogen)
  * Tooling to assist in the key layout and mechanical design
* Tutorials to get me started with ergogen
  * [Let's Design A Keyboard With Ergogen v4](https://flatfootfox.com/ergogen-part2-outlines/)
  * [I Built My Dream Keyboard from Absolute Scratch](https://www.youtube.com/watch?v=7UXsD7nSfDY)
