# SlimDash

![SlimDash-Logo](./Assets/SlimDash_Logo-small.png)

ErgoDash inspired low-profile key switch keyboard with embedded RP2040

## Still in development

Please check back later.

### Parts List

* PCB
  * Order with PCBA using ./hardware-rev1/PCB/slimdash_v1.0.0.zip and
    BOM/CPL files in the same directory.
* Acrylic: Order cuts for following (number required for one keyboard)
  * `backplate_1left_3mm-157.1x131.2.zip` x 1
  * `backplate_1right_3mm-155.2x131.2.zip` x 1
  * `backplate_2both_2mm-157.1x131.2.zip` x 1
  * `backplate_2left_2mm-157.1x131.2.zip` x 1
  * `backplate_3both_2mm-157.1x39.02.zip` x 2
  * `baseplate_left_2mm-155.2x131.2.zip` x 1
  * `baseplate_right_2mm-155.2x131.2.zip` x 1
  * `coverplate_both_2mm-20.05x81.60.zip` x 2
* Screws/standoff
  * 14x m2x4 through-hole standoff x 7 x 2 = 14
    * <https://www.monotaro.com/p/1111/2876/>
  * 6x m2x10 through-hole standoff x 3 x 2 = 6
    * <https://www.monotaro.com/p/1111/2998/>
  * 32x m2x4 screws x (10 + 6) x 2 = 32
    * <https://www.monotaro.com/p/2902/9395/>
  * 8x m2x6 screws x 4 x 2 = 8
    * <https://www.monotaro.com/p/2902/9413/>
* Hand-Soldered Items
  * 70x Kailh low profile (choc v1) switches of your choice
  * 70x Kailh low profile hotswap sockets
    * Can be ordered from LCSC with part number [C5333465](https://www.lcsc.com/product-detail/Mechanical-Keyboard-Shaft_Kailh-CPG135001S30_C5333465.html)
  * 4x 3x6x4.3 horizontal tact switch
    * <https://www.newegg.com/p/2S7-01KR-035X0>
    * <https://shop.yushakobo.jp/collections/all-keyboard-parts/products/a1600ed-01-1>
    * You can also order from LCSC with part number [C18078123](https://www.lcsc.com/product-detail/Tactile-Switches_Bossie-BX-TS-26-3643ZJ_C18078123.html)
    * MJTP1117/PHAP3363 from DigiKey should work as well [679-2400-ND](https://www.digikey.com/en/products/detail/apem-inc/MJTP1117/1795496)
    * [schematics](images/tactile-switch_3x6x4.3.jpg)
  * 2x TRRS socket (MJ-4PP-9) connector
  * (optional) 70x SK6812MINI-E
    * <https://shop.yushakobo.jp/products/sk6812mini-e-10?variant=40047782953121>
    * [C5149201](https://www.lcsc.com/product-detail/RGB-LEDs-Built-in-IC_OPSCO-Optoelectronics-SK6812MINI-E_C5149201.html)
* A Kailh Choc v1 compatible keycap set
  * recommend ortho linear keycap set
* Other Accessories
  * 1x TRRS Cable (Straight)
    * <https://shop.yushakobo.jp/products/self-made-cable?variant=39623339737249>
    * Anything with Tip-Ring-Ring-Sleeve type 2.5mm jack with straight wiring
      should work.
  * 1x USB-C Cable (Type-A to C or Type-C to C depending on your host PC connector)

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
    * Main screws from top: 2mm+screw length (~2mm) = 4mm
    * Main screws from bottom: 2mm+screw length (~2mm) = 4mm
    * Main screws from BP3: 4mm+ screw length (~2mm) = 6mm
    * Cover Plate standoff: 4.6mm + parts height (5.4mm+) = 10mm
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
