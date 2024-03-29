# dont-give-up-the-cat

[AGS Forums Topic](https://www.adventuregamestudio.co.uk/forums/index.php?topic=60424.0) | [on itch.io](https://eri0o.itch.io/dont-give-up-the-cat) | [AGS DB](https://www.adventuregamestudio.co.uk/site/games/game/2643-don-t-give-up-the-cat/)

<img src="images/dgutc_cover.gif" width="320">

*Tonight, your owner let you out in the woods*

A short game intended to be played at night, using headphones. In this first-person game you use your mouse to look around and scratch things, and WASD keys for walking, shift to run, and you use Esc to show the menu. After you run you may sit around to breathe a bit and listen to the forest. 

## Screenshots

<img src="images/screenshot_00.png" width="320"> <img src="images/screenshot_01.png" width="320">
<img src="images/screenshot_02.png" width="320"> <img src="images/controls.png" width="320">

## Renderer system

As Adventure Game Studio is a 2D game making software, we are going to leverage it's Overlay functionality, which more closely lets us manipulate sprite textures on screen, with reasonable performance. The following describes how it works.

The Mode7Lite module has my [mode7](https://github.com/ericoporto/mode7) module, but it's stripped of it's bitmap drawing functionality, and only capable of the sprite positioning in a 3D like space capability. This script module allows to define Mode7Objects in a 3D space, and then positioning and resizing overlays to, considering an in world camera, project the visible space on Screen.

Adding or removing objects from this 3D world only considers it for rendering, but removing them doesn't delete them if they are referenced elsewhere, as AGS Script is garbage collected. The mode7 renderer would have to iterate through all objects per frame, and in a reasonably big world this could get expensive. To solve this, we will have to divide the world in smaller parts and introduce a new component to handle this, the ZoneManager.

The ZoneManager divides the world in a grid, and inserts the player in the center of a 3x3 selection of cells in this grid. These 9 cells are considered active and other cells are considered inactive. Only active cells are considered when rendering. When the player switches from a cell space to another, all objects gets removed from the Mode7Lite considered world, and then the objects in the current active cells are readded. This allows the player to rotate its head around more fluidly, as there will be a part of the world around it.


## Credits

Code is MIT Licensed, except when code specific license is applied. Game Assets are all rights reserved or they belong to their original authors.

- Game by Érico Porto
- Music by Jon Paul Sapsford
- Ghosts, graves and icon by Haloa
- Gameplay Testing by Morgan Willcock, Heltenjon and Newwaveburritos
- AGS ​Script Modules
  - Tween by ​Edmundito
  - ​​Timer and Typed Text by  ​Crimson Wizard
- Additional assets from itch.io, opengameart and freesound
  - Clouds: ansimuz - Sunnyland,  recolored
  - Forest trees, stones, flowers and base palette: Trixie (trixelized) - STRINGSTAR FIELDS
  - House: Lanthanum - 3D Model House (PicoCAD),  recolored
  - Save cat: kotnaszynce - kitka.gif,  recolored+resized
  - Smoke: KnoblePersona - Smoke & Fire Animated Particle
  - Title Screen Cat: Ben - Camp Cat (PicoCAD), modified
  - Forest crickets and atmosphere: LokiF - Swamp Environment Audio
  - Cat Footsteps: melle_teich - Animal footsteps on dry leaves
  - Cat Jump: FOX2814 - Cat jump
  - Game Font: Fibberish by  Nathan Scott
