# IBM Developer's Workframe/2 Make File Creation run at 22:29:40 on 02/25/93

# Make File Creation run in directory:
#   C:\GAME\VOL1N7;

.SUFFIXES:

.SUFFIXES: .c .rc

ALL: GAME.EXE \
     GAME.RES

game.exe:  \
  dialog.res \
  files.OBJ \
  GAME.OBJ \
  GAME.RES \
  HEXES.OBJ \
  menu.OBJ \
  TARGET.OBJ \
  GAME.MAK
   @REM @<<GAME.@0
     /CO /ST:8192 /NOL /BAT /PM:PM +
     files.OBJ +
     GAME.OBJ +
     HEXES.OBJ +
     menu.OBJ +
     TARGET.OBJ
     game.exe
     
     
     ;
<<
   LINK386.EXE @GAME.@0
   RC dialog.res game.exe
   RC GAME.RES game.exe

{.}.rc.res:
   RC -r .\$*.RC

{.}.c.obj:
   ICC.EXE /Ss /Q /Kbcap /V"Volume 1, Issue 7 - April 1993" /Ti /O /Gm /Gs /C .\$*.c

!include GAME.DEP
