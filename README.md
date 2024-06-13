# Pocket openFPGA Gauntlet Core with support for Analogizer-FPGA adapter
* Analogizer V1.0.0 [12/06/2024]: Added initial support for Analogizer adapter (RGBS, RGsB, YPbPr, Y/C, SVGA Scandoubler) and SNAC.
* Analogizer V1.0.1 [13/06/2024]: Added new scandoubler with HQ2x FX (taken from MiSTer framework). Fixed video image noise.
  
Adapted to Analogizer by [@RndMnkIII](https://github.com/RndMnkIII) based on **obsidian-dot-dev** openFPGA Gauntlet Core:
https://github.com/obsidian-dot-dev/openFPGA-Gauntlet

The core can output RGBS, RGsB, YPbPr, Y/C and SVGA scandoubler (50% scanlines) video signals.

| Video output | Status |
| :----------- | :----: |
| RGBS         |  ✅    |
| RGsB         |  ✅    |
| YPbPr        |  ✅    |
| Y/C*         |  ✅    |
| Scandoubler  |  ✅    |


**Analogizer** is responsible for generating the correct encoded Y/C signals from RGB and outputs to R,G pins of VGA port. Also redirects the CSync to VGA HSync pin.
The required external Y/C adapter that connects to VGA port is responsible for output Svideo o composite video signal using his internal electronics. Oficially
only the Mike Simone Y/C adapters (active) designs will be supported by Analogizer and will be the ones to use.

Support native PCEngine/TurboGrafx-16 2btn, 6 btn gamepads and 5 player multitap using SNAC adapter
and PC Engine cable harness (specific for Analogizer). Many thanks to [Mike Simone](https://github.com/MikeS11/MiSTerFPGA_YC_Encoder) for his great Y/C Encoder project.

For output Y/C and composite video you need to select in Pocket's Menu: `Analogizer Video Out > Y/C NTSC` or `Analogizer Video Out > Y/C NTSC,Pocket OFF`.
For output Scandoubler SVGA video you need to select in Pocket's Menu: `Analogizer Video Out > Scandoubler RGBHV`.

You will need to connect an active VGA to Y/C adapter to the VGA port (the 5V power is provided by VGA pin 9). I'll recomend one of these (active):
* [MiSTerAddons - Active Y/C Adapter](https://misteraddons.com/collections/parts/products/yc-active-encoder-board/)
* [MikeS11 Active VGA to Composite / S-Video](https://ultimatemister.com/product/mikes11-active-composite-svideo/)
* [Active VGA->Composite/S-Video adapter](https://antoniovillena.com/product/mikes1-vga-composite-adapter/)

Using another type of Y/C adapter not tested to be used with Analogizer will not receive official support.

=========================================================================================================

Gauntlet-compatible FPGA core for Analogue Pocket.

Based on the FPGA Gauntlet core by d18c7db, ported from the [MiSTer version](https://github.com/MiSTer-devel/Arcade-Gauntlet_MiSTer).

## Compatibility

This core supports the arcade games that run on the Atari Gauntlet board.  The list of games includes:

* Gauntlet (both 2 and 4-player versions)
* Gauntlet II (both 2 and 4-player versions)
* Vindicators Part II

## Features

### Service Mode

Toggling "Service mode" in the interact menu will reset the game to its service menu.  From here you can set the difficulty, health-per-coin, and other game parameters, as well as run through the various diagnostics tests.

Toggle "service mode" off to reset the game with the settings applied.  

Note: settings do not persist after exiting the core

### Gauntlet - Character Selection

Exclusive to Gauntlet (original, 4-player cabinet), settings have been added in the interact menu to dynamically map which character is controlled by which joystick.  This allows any player to control any character without having to pair multiple controllers.

### Vindicators Part II - Tank Controls

On Pocket, the tank controls are mapped as follows:

Left Movement -- DPad up/down
Right Movement -- Face buttons X/B
Rotate Turret Left -- DPad right
Rotate Turret Right -- Face button Y
Fire Left -- Trigger L
Fire Right -- Trigger R

When docked and paired with a dual-analogue controller, the game supports twin-stick tank controls as folows:

Left Movement -- Left stick up/down
Right Movement -- Right stick up/down
Rotate Turret Left -- Trigger L1
Rotate Turret Right -- Trigger R1
Fire Left -- Trigger L2
Fire Right -- Trigger R2

## Usage

*No ROM files are included with this release.*  

Install the contents of the release to the root of the SD card.

Place the necessary `.rom` files for the supported games onto the SD card under `Assets/gauntlet/common`.

To generate the `.rom` format binaries used by this core, you must use the MRA files included in this repo, along with the corresponding ROMs from the most recent MAME release.

## History

v0.9.0
* Initial Release.

## License

All new materials for this port are licensed under the terms of the GPLv3.

Please see the headers and license files for the licensing terms of the individual dependencies.

## Attribution

```
Original Gauntlet FPGA-compatible core by Alex 
https://github.com/d18c7db/Gauntlet_FPGA
```