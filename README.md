# SlimDash

ErgoDash inspired low-profile key switch keyboard with embedded RP2040

## Still in development

### TODOs

* ergogen (part 1) → DONE
  * create general outline of the PCB and plates.
  * create base PCB layout with the switch and Diode footprints
* KiCAD
  * create matching schematic
  * import the PCB design from ergogen and match with schematic
  * adjust footprints and part BOM
    * smt diode needs to be matched for proper size BOM
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
  * adjust outer dimensions to

## Acknowlegements

* [ErgoDash by omkbd](https://github.com/omkbd/ErgoDash)
  * Inspiration for this keyboard
* [ergogen](https://github.com/ergogen/ergogen)
  * Tooling to assist in the key layout and mechanical design
* Tutorials to get me started with ergogen
  * [Let's Design A Keyboard With Ergogen v4](https://flatfootfox.com/ergogen-part2-outlines/)
  * [I Built My Dream Keyboard from Absolute Scratch](https://www.youtube.com/watch?v=7UXsD7nSfDY)
