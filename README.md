# SlimDash

![SlimDash-Logo](./Assets/SlimDash_Logo-small.png)

ErgoDash inspired low-profile key switch keyboard with embedded RP2040

## Still in development

Please check back later.

### TODOs

* ergogen
  * I think we are done?
  * double check after PCB layout is done
  * Fix BP2 to accommodate
  * Stackup plan
    * Top layer: 2mm (m2 screw hole)
    * PCB layer: 1.6mm (m2 standoff)
    * BP1 layer: 3mm (m2 standoff)
    * BP2 layer: 2mm (m2 screw hole)
    * BP3 layer: 2mm (m2 screw hole)
    * Main standoff: 4mm-4.6mm
      * [monotaro](https://www.monotaro.com/p/4226/7784/?t.attr_f2=M2&t.q=%83X%83y%81%5B%83T%81%5B%20%91S%83l%83W)
    * Main screws from top: 2mm+screw length (~2mm) = 4mm
      * [monotaro](https://www.monotaro.com/p/4174/6695/?t.attr_f2=M2&t.q=m2%20%83l%83W)
    * Main screws from bottom: 2mm+screw length (~2mm) = 4mm
    * Main screws from BP3: 4mm+ screw length (~2mm) = 6mm
      * [monotaro](https://www.monotaro.com/p/4174/6713/?t.attr_f2=M2&t.q=m2%20%83l%83W)
    * Cover Plate standoff: 4.6mm + parts height (3.4mm+) = 8mm
    * Cover Plate screw from top: 2mm+screw length = 4mm
    * Cover Plate screw from bottom: 2mm+screw length = 4mm
    * Cover Plate screw from BP3: 4mm+screw length(~2mm) = 6mm
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
* Tools used for making `keyboard.json` less tedious.
  * [KLE](https://www.keyboard-layout-editor.com/)
  * [Keyboard Firmware Builder](https://kbfirmware.com/)
  * [KBFirmware to qmk converter](https://noroadsleft.github.io/kbf_qmk_converter/)

## License

[SlimDash](https://github.com/mizma/SlimDash) by
[mizma](https://github.com/mizma) is licensed under
[Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1)
<img alt='CC' src='https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1' height='16pt'> -
<img alt='by' src='https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1' height='16pt'> -
<img alt='SA' src='https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1' height='16pt'>
