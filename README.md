# Modern MSX BASIC Game Development

This repository contains examples, demos and scripts from the book ["Modern MSX-BASIC Game Development"](https://www.amazon.com/Modern-MSX-BASIC-Game-Development/dp/1527298094/)

![51nVbm22NBS _SX331_BO1,204,203,200_](https://user-images.githubusercontent.com/1717361/126006613-48c47e3b-922a-4d7c-9840-cf3410a226ab.jpg)

You can read the preface [here](https://github.com/plattysoft/Modern-MSX-BASIC-Game-Dev/blob/main/Preface.pdf)

You can play around with the examples of the book [here](https://webmsx.org/?MACHINE=MSX1E&ROM=https://github.com/plattysoft/Modern-MSX-BASIC-Game-Dev/raw/main/demo/output/demo.rom)

## About the book

MSX is a 1983’s 8-bit architecture standard for home computers. It includes a Z80 microprocessor and dedicated chips for graphics and sound.

MSX BASIC is the default language of MSX computers. It is simple, yet reasonably powerful. You can use sprites, joysticks, and even access to the graphic and sound chips directly. That makes MSX BASIC a great entry point for making games and learning all the important concepts of MSX.

Back in the 80s, then there was no Internet. The books available were few and often not very helpful. Most contained simply a list of all the BASIC instructions and some program listings without any explanation. It was unnecessarily hard. 

Nowadays there are vastly more resources available, but I still missed an all in one solution with all the details on how to write good games using MSX BASIC with the tools we have available today. That is what this book aims to be.

Welcome to Modern MSX BASIC Game Development.

## Book structure
The book is structured following a progressive approach in which we will cover the basics in the first chapters and will be building on top of the knowledge of previous chapters.

- In the first chapter we talk about the development environment and the different options with their pros and cons.
- In the second chapter, we cover the particularities of MSX BASIC as well as the different types of variables, some particularities of the language and a few recommendations on how to write programs.
- In chapter 3 we get further into MSX BASIC structure and flow as well as commands for managing input and output.
- In chapter 4, we start to build games, we will see how to define and use sprites and how to handle joysticks; and we will build a space shooter along the way.
- In chapter 5 we explore the different ways to add collision detection to our space shooter, from hardware sprite collision to hitboxes and a combination of both.
- In chapter 6, we look into the basic drawing commands available and we will build a simple dungeon game to highlight how they can be used.
- Chapter 7 is when we get deep into the MSX graphics and dive into how to program the VDP to define tiles for more colorful and efficient graphics. This
chapter is all about VPOKE and VPEEK.
- In chapter 8 we explore how we can add sound effects to our games, both using the high level command PLAY and also accessing the PSG directly with SOUND.
- Finally, in chapter 9 we will see some advanced techniques of MSX BASIC, including making it run blazing fast by compiling it with MSX-BASIC-KUN, splitting the program into many files to make the game more versatile, how to publish it, and we’ll close with a brief glimpse of other more advanced ways to make games for the MSX family.

## Links

### Emulators
* openMSX: https://openmsx.org/
* webMSX: https://github.com/ppeccin/webmsx
* fMSX: https://fms.komkon.org/fMSX/
* blueMSX: http://bluemsx.msxblue.com/download.html

### Editors
* MSXPen: https://msxpen.com/
* Kate: https://kate-editor.org/
* Sublime tools: https://github.com/farique1/MSX-Sublime-Tools
* Atom plugin: https://github.com/plainspooky/language-msxbasic

### Music tools
* Arkos Tracker 2: https://www.julien-nevo.com/arkostracker/
* WYZTracker: https://github.com/AugustoRuiz/WYZTracker
* WYZPlayer: https://sites.google.com/site/wyzplayer/

### Design tools
* tinySprite: http://msx.jannone.org/tinysprite/
* nMSXTiles: https://github.com/pipagerardo/nMSXtiles

### Other tools
* dsk2rom: https://github.com/joyrex2001/dsk2rom
* hexFiend: https://hexfiend.com/
* MSX-BASIC-KUN: https://konamiman.github.io/MSX2-Technical-Handbook/md/KunBASIC.html

### Useful websites
* MSX Resource Center: https://www.msx.org/
* MSXdev Context: https://www.msxdev.org/

### Beyond MSX BASIC
* RetroDeluxe: https://github.com/retrodeluxe/rlengine-msx
* Fusion C: https://github.com/ericb59/Fusion-C-v1.2
* UBOX: https://github.com/reidrac/ubox-msx-lib
