# SlimDash

![SlimDash-Logo](./Assets/SlimDash_Logo-small.png)

ErgoDash inspired low-profile key switch keyboard with embedded RP2040

## Still in development

Below are my personal memos of what needs to get done or what
is needed for design decisions.

### TODOs

* KiCAD
  * Schematics
    * should be complete
  * PCB desing
    * trace routing for RGB LEDs
  * Gerber data generation
    * TBD
    * Double check on parts footprint and part catalogue No.
* ergogen
  * I think we are done?
  * double check after PCB layout is done
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

## Acknowlegements

* [ErgoDash by omkbd](https://github.com/omkbd/ErgoDash)
  * Inspiration for this keyboard
* [ergogen](https://github.com/ergogen/ergogen)
  * Tooling to assist in the key layout and mechanical design
* Tutorials to get me started with ergogen
  * [Let's Design A Keyboard With Ergogen v4](https://flatfootfox.com/ergogen-part2-outlines/)
  * [I Built My Dream Keyboard from Absolute Scratch](https://www.youtube.com/watch?v=7UXsD7nSfDY)

## License

[SlimDash](https://github.com/mizma/SlimDash) by
[mizma](https://github.com/mizma) is licensed under
[Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1)
<img alt='CC' src='https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1' height='16pt'> -
<img alt='by' src='https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1' height='16pt'> -
<img alt='SA' src='https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1' height='16pt'>
