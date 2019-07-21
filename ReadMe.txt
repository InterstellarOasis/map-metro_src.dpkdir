##############################
# Game: Tremulous            #
# Map: Metro                 #
# Version: Beta 1            #
# Date: 04/04/07             #
# Author: KOsAD              #
# Contact: kosad93@gmail.com #
##############################


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


II/ Manual
----------

 a) Mechanism
 ************

  The two teams are isolated at the beginning to facilitate base move, by two doors and
an air vent. The two doors will open two minutes after game start. Nevertheless, humans
(and only humans) can open them before, just in getting close.
Air vent is not time triggered, any player can open it from inside.

  The platform near the escalator can be reached (humans with no jetpack or tricky
nade/luci jump) by firing a small button under the ladder.


 b) Gameplay
 ***********

  You can build everywhere. Let me know about annoying camping spot, I will add nobuild
shader if necessary.

  You can't fire through metal grids.

  Air vent was designed for human rush and alien eggspam to reduce map scale (~35s from
default base to base using regular ways vs ~25s through vent).



III/ Construction
-----------------

 a) About the map
 ****************

  Design: ~4 month [5715 brushes; 997 entities]
  Compile: ~21min [Pentium M 1.73GHz]
    .BSP:    68s   [-meta -custinfoparms -samplesize 8]
    .Vis:    71s   [-vis -hint]
    .Light:  1149S [-light -fast -filter -patchshadows -super 2 -samples 2]


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

 *Cracks: on the low pillar in stone quarry.

 *Models: can't be lightgrid illuminated AND shader patched.

[PARTIALLY SOLVED]
 *Looped sounds: don't depend of vis portal and can be heard from everywhere
provided you are close enough to the target_speaker.
 =>Solution used: Triggered target_speaker will play sound using the vis portal.
So I triggered all target_speaker with a func_timer for each sound. There is
still a problem with this solution because in the worst case, when you enter
a vis portal emitting a sound, you must wait the sound currently playing stop
and restart to hear it. So this works better with small sounds length (<~4s).

[SOLVED]
 *Dynamic lights: have very bad results on performance. So they must be used in
very close area. However, I needed crypt/aqueduct/catacombs/quarry area to be
dynamically lighted to simulate a fire noise. So I patched all textures used there.
I gained ~100FPS.



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
LordSquart, CH4NDL3R, Soubok , Greudin and ydnar for his q3map2.