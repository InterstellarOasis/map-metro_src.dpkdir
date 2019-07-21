##################################
# Game: Tremulous                #
# Map: Metro                     #
# Version: Beta 1.2              #
# Filename: map-metro-b1-2.pk3   #
# Date: 03/12/07                 #
# Author: KOsAD                  #
# Contact: kosad93@gmail.com     #
##################################


Contents
========
  I/ General
 II/ Manual
III/ Construction
 IV/ Known issues
  V/ Credits
 VI/ Thanks



I/ General
----------

  Metro is a map for tremulous which takes place in Paris undergrounds, including
subway, sewers, crypt, catacombs and stone quarry.

  This map is placed under the license:
Creative Commons Attribution-Noncommercial-Share Alike 2.0 France

  Website: http://kosad93.googlepages.com


  Update:
  *******
    #Beta 1.2 (urgent update again :()
      - Console warnings: CM_GridPlane unresolvable and mac crash fixed
      - cracks on the low pillar fixed
      - invisible alien spawn fixed (humans can win now :p)
      - random train passage removed for beta (it comes every 5min now, don't miss it ;))
      - removed a lot of empty func_group
      - turned off a light in staircase entrance
      - a candle added near low pillar

    #Beta 1.1 (urgent update)
      - map name in level start fixed
      - .arena added
      - escalators have been removed
      - "glurp" sounds added [for servers not owning pulse]
      - lights near escalators have been increased a little bit
      - "Train corner without a target" fixed
      - crypt vault optimized a bit
      - dynamic advertisment test

II/ Manual
----------

 a) Mechanism
 ************

  The two teams are isolated at the beginning to facilitate base move, by two doors and
an air vent. The two doors will open two minutes after game start. Nevertheless, humans
(and only humans) can open them before, just in getting close.
Air vent is not time triggered, any player can open it from inside.

(** Removed because entities with a health key count as alien spawn in Tremulous 1.1.0
  The platform near the escalator can be reached (humans with no jetpack or tricky
nade/luci jump) by firing a small button under the ladder. **)


 b) Gameplay
 ***********

  You can build everywhere. Let me know about annoying camping spot, I will add nobuild
shader if necessary.

  You can't fire through metal grids.

  Air vent was designed for human rush and alien eggspam to reduce map scale (~35s from
default base to base using regular ways vs ~25s through vent).



III/ Construction
-----------------

 a) About the map (beta 1 stats)
 ****************

  Design: ~4 month [5715 brushes; 997 entities]
  Compile: ~21min [Pentium M 1.73GHz]
    .BSP:    68s   [-meta -custinfoparms -samplesize 8]
    .Vis:    71s   [-vis -hint]
    .Light:  1149s [-light -fast -filter -patchshadows -super 2 -samples 2]


 b) Tools
 ********

   .Level design:    GtkRadiant 1.5.0
   .Level compiler:  q3map2 2.5.16
   .Texture editing: Gimp 2.2
   .Text editing:    Crimson Editor 3.70
   .3D modeling:     Gmax 1.2
   .Sound editing:   Audacity 1.2.4
   .File archiver:   7-Zip 4.42
   .Shader Preview:  q3ase 1.5.3


IV/ Known issues
----------------

[UNSOLVED]
If you know how to solve one of this problem, please email me.

 *Sunlight bleeding: in staircase and line 13 station.

 *Models: can't be lightgrid illuminated AND shader patched.


[PARTIALLY SOLVED]
 *Looped sounds: don't depend of vis portal and can be heard from everywhere
provided you are close enough to the target_speaker.
 =>Solution used: Triggered target_speaker will play sound using the vis portal.
So I triggered all target_speaker with a func_timer for each sound. There is
still a problem with this solution because in the worst case, when you enter
a vis portal emitting a sound, you must wait the sound currently playing stop
and restart to hear it. So this works better with small sounds length (<~4s).
 *Cracks: on the low pillar in stone quarry. I simply have merged the old pillar
with beta 1.2. Brushes are not merged optimized, and it may exist some other cracks
somewhere else in the quarry/catacombs.


[SOLVED]
 *Dynamic lights: have very bad results on performance. So they must be used in
very close area. However, I needed crypt/aqueduct/catacombs/quarry area to be
dynamically lighted to simulate a fire noise. So I patched all textures used there.
I gained ~100FPS.
 *func_train whitout target: I added a target key to the func_train.
 *Console warnings: CM_GridPlane unresolvable. Those warnings cause beta1.1 to
crash for Mac user. After getting a crash log from Elaum, I found two patches
were badly build (Entites 860 & 861): Fixed points and controls points were mixed
in only one point. I simply have redrawn those two patches, in paying much more
attention to mixing points.




V/ Credits
-----------

If you recognize some of you work in this map, and I didn't mention you,
(and | or) you don't agree with licence, please, don't hesitate to
contact me at kosad93@gmail.com.

 a) Models
 *********

     .Mike 'Veda' Mcinnerney (plant_life)
          http://www.cybercowboys.com/~mike/

     .KOsAD
          kosad93@gmail.com
          http://kosad93.googlepages.com/metro.html


 b) Textures
 ***********

   #Creative Commons Attribution-NonCommercial 2.0
     .Simon "sock" O'Callaghan
          http://simland.planetquake.gamespy.com


   #Creative Commons Attribution-NonCommercial-NoDerivs 2.0
     .yves "evil lair" allaire
          http://evillair.net

   #Creative Commons Attribution-ShareAlike 2.5
     .randy "ydnar" reddig
          ydnar@shaderlab.com
          http://shaderlab.com
     .jan "stannum" van der weg
     .overflow

   #Creative Commons Attribution-NonCommercial-ShareAlike 2.0
     .berneyboy
          berneyboy@hotmail.com
          http://berneyboy.planetquake.gamespy.com
     .PkVintuitkat
          PkVintuitkat@wanadoo.fr
          http://perso.orange.fr/bmbw
     .noah
          quachnoah@hotmail.com
          http://sttp13.free.fr
     .Fabrice
          fabo006@hotmail.com
          http://trains-idf.net/?p=10#MF77
     .tropicalboy
          tropiceagle@hotmail.com
          http://tropicalboy.canalblog.com/
     .KOsAD
          kosad93@gmail.com
          http://kosad93.googlepages.com/tremulous_metro.html

     .http://www.texturewarehouse.com/gallery/index.php

   #"Freely distributable"
     .http://turbosquid.com
     .http://local.wasp.uwa.edu.au/~pbourke/texture_colour/
     .http://www.grsites.com/textures/
     .http://www.noctua-graphics.de/english/freetex_e.htm
     .http://www.imageafter.com/
     .http://amazingtextures.com/textures/
     .http://www.mayang.com/textures/


 c) Sounds
 *********

  All sounds have been edited by me to make them fit in the map.

   #Creative Commons Sampling Plus 1.0
   You can find all the original sounds on http://freesound.iua.upf.edu/
     .adllto
     .andriala
     .ashassin
     .billy_magnum
     .dobroide
     .emmanuel
     .Erdie
     .fractal_dimension
     .Halleck
     .homejrande
     .klangfabrik
     .kollege
     .Marec
     .mikehirst
     .randomroutine
     .reinsamba
     .thedapperdan

   #"Freely distributable"
     .http://www.sound-fishing.net/bruitages.htm


VI/ Thanks
----------

  Thanks to the authors mentionned above, to all trem dev and Timbo,
LordSquart, CH4NDL3R, Soubok for tips
Greudin, Tuple, Thorn, tHc team for hosting
and ydnar for his q3map2.