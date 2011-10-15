0a 1b *2c* 3d

Mission statement
=================
We want to make easier to write cross-platform applications.
We want to make those apps more 'je ne sais quoi', by making it easy to add 3D, AR and Video components.


Getting started
===============
Clone the repo.

Android - Use Eclipse to add all projects in the Dev/
iOS - Dev/iOS/2c.xcodeproj
Qt - Dev/Qt/Project/2c.pro

Look at source file Dev/App/Source/SceneSample1.cpp
for the hook into the first scene that launches.


External components used
========================
3dsloader (BSD)
http://www.spacesimulator.net/wiki/index.php?title=3d_Engine_Programming_Tutorials
Loads the 3ds model format.
Found in Dev/External/3dsloader
*Modified - stripped down tutorial 5 and provided hooks into engine's cross platform file loader.

AdMob SDK
http://admob.com
An advertising provider.
Found in Dev/External/AdMob
Library file linked to.

Facebook iOS SDK (Apache 2.0)
https://developers.facebook.com/
Provides login to Facebook API.
Found in Dev/External/facebook-ios-sdk
*Modified - stripped out example files and provided direct callbacks into C++ engine classes rather than using their Objective C interface callbacks.

Jansson (MIT)
http://www.digip.org/jansson/
Jansson is a C library for encoding, decoding and manipulating JSON data.
Found in Dev/External/jansson-2.1
*Modified - stripped out example files.

UIDevice-Hardware (BSD)
https://github.com/erica/uidevice-extension
Describes iOS hardware types.
Found in Dev/External/UIDevice-Hardware


External tools used
===================
RevanTech Bitmap Font Generator (BSD)
Used to generate font pages.
Found in Tools/RTBFG
*Modified - outputs fonts to fill 1024x1024 page.