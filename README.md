# Immersion Cigs - Rewrite

## Overview

This mod adds an ability to smoke cigarettes or enjoy lollipops.
While smoking, the cig will change it's model to a smaller version disappearing in the end (around 5 minutes) and producing smoke while it's active.
Mod is fully multiplayer compatible so you will hear the sound of the matches from other players and you'll see the smoke coming from the cigarette synchronized between all clients.

We do not encourage anyone to smoke in real life, we don't smoke irl, it's just a small addition in favour for some additional immersion.

### Usage
- By Left Clicking on the Items in the Inventory (Cig Packs, Smokable and Suckable Items)
- With ACE Loaded, via ACE Interaction Menu


### For MissionMakers
- `[_unit] call cigs_core_fnc_start_smoking;` (Requires Smokeable Item in Glasses or HMD Slot)

### Credits
- Original Authors:
  - Rebel - Configs, Scripting
  - Facel - 3d models, Textures
  - Panimala - Icons, Sounds
- Contributing Authors:
  - prisonerMO - Scripting: remoteExec -> CBA Events
  - kneely - WW2 Cigarette Models and Textures
  - Vespade - Immersive Crayon Models and Textures
  - Brominum - Model Cigarbox and new sounds
  - ArtemisGodfrey - Helping with models
  - yepperz - Artworks
  - OverlordZorn - Rewrite of configs and scripts, fixing some models here, adding some new textures there and glueing everything together

### Dependencies
- Latest Arma 3
- [CBA - Community Based Addon](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997)

### Optionals
- [ACE3](https://steamcommunity.com/sharedfiles/filedetails/?id=463939057)

### Compats for
- SOG: Prarie Fire
- [KJW's Imposter](https://steamcommunity.com/sharedfiles/filedetails/?id=2917554904)

### For Server Admins
- This mod has to be loaded on both, Server and Client.


# The Rewrite

This is Mod is a full Rewrite of the original Immersion Cigs Mod by Rebel & Facel:
- [Immersion Cigs - Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=753946944)
- [Immersion Cigs - Git Hub](https://github.com/rebelvg/immersion_cigs/tree/master)
- [Immersion Cigs - Forum Thread](https://forums.bistudio.com/forums/topic/181841-immersion-cigs/)

> [!WARNING]
> Due to the extensive rewrite, this is not compatible with Mods which have been based/are dependend on the original Mod.

## What is included?

### Full Rewrite of pretty much everything.
- no more scheduled code
  - dependency on CBA
  - Vanilla ScrollWheel Actions are replaced with CBA's Context Menu (Left Click on Inventory Screen)
  - No more hard coded data, instead defined through config.
    - Extensions, Compats or addition of new Types of Smokables/Suckables is much easier. Ether through integration in the main mod or by making an extension mod with this mod as a dependency.

- Every fix that came with the [Immersion Cig - Hotfix](https://steamcommunity.com/sharedfiles/filedetails/?id=3146026772)
  - When taking a new Cigarette from the box, it will try to put the cig first in the goggles/face slot, ifn't, then the NVG slot and only as a last resort, it will put it in the inventory.
  - Allows to light someone else's cig when its in the NVG slot.
  - Rewrote all functions within the modified addon to avoid scheduled environment.(CBA Dependency).
  - Matches, Lighter, Box of Cigarettes are now found in the Misc. Section of the ACE Arsenal

- Integrated Compatibility for KJW's Imposter Mod

### The following Mods are merged into this Rewrite:
- [Kneely's WW2 Cigarettes](https://steamcommunity.com/sharedfiles/filedetails/?id=3174419638)
- [Vespade's Immersion Crayons](https://steamcommunity.com/sharedfiles/filedetails/?id=2311516767) 
  - Implemented as Suckables, like the lollipops.
  - might maybe come as smokables later.

### The following CDLC's are supported
- S.O.G. Prairie Fire
  - Supports the DLC's Cigarette Pack
  - Supports the DLC's Lighter while retaining its vanilla feature of setting things on fire.
  - Added Smokable Cigarettes that can be taken from the Vanilla Cigarette Pack

### The Following CDLC's might be supported in the future
- Spearhead 1944
  - Since this DLC only provides Facewear Cigarettes, I have find a suitable integration method.

### Note

## Links
- [Github Repository: Immersion Cigs - Rewrite](https://github.com/OverlordZorn/immersion-cigs-rewrite)
- [Steam Workshop: Immersion Cigs - Rewrite](https://steamcommunity.com/sharedfiles/filedetails/?id=3375788189)
