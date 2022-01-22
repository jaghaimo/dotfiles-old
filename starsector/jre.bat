set starsector=C:\starsector
rmdir %starsector%\jre
mklink /D %starsector%\jre %starsector%\jre%1
