..\jre\bin\java.exe -Djava.library.path=native\windows -Xms1536m -Xmx1536m -Xss2048k -Dcom.fs.starfarer.settings.paths.logs=. -Dcom.fs.starfarer.settings.paths.saves=../saves -Dcom.fs.starfarer.settings.paths.screenshots=../screenshots -Dcom.fs.starfarer.settings.paths.mods=../mods -classpath janino.jar;commons-compiler.jar;commons-compiler-jdk.jar;starfarer.res.jar;starfarer.api.jar;starfarer_obf.jar;jogg-0.0.7.jar;jorbis-0.0.15.jar;json.jar;lwjgl.jar;lwjgl_util_applet.jar;jinput.jar;lwjgl_test.jar;log4j-1.2.9.jar;lwjgl_util.jar;fs.sound_obf.jar;fs.common_obf.jar;xstream-1.4.10.jar com.fs.starfarer.StarfarerLauncher
set CUR_YYYY=%date:~6,4%
set CUR_MM=%date:~3,2%
set CUR_DD=%date:~0,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%
set SUBFILENAME=%CUR_YYYY%%CUR_MM%%CUR_DD%-%CUR_HH%%CUR_NN%%CUR_SS%
ren starsector.log starsector-%SUBFILENAME%.log
@echo off
if errorlevel 1 (
   pause
)