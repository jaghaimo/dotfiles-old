set starsector=C:\starsector
rmdir %starsector%\mods
rmdir %starsector%\saves
mklink /D %starsector%\mods %starsector%\mods-%1
mklink /D %starsector%\saves %starsector%\saves-%1
