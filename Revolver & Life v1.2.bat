@echo off
title Gaming
mode con cols=30 lines=18
set winr=0
:TOP
set "c=��" 
set "d=��"
::16000
set Delay=8800
for /l %%a in (0 +1 13) do set "x%%a= "
for /l %%n in (0 +1 9) do set "c%%n=%c%"
:DEF
set /a r=%random%%%10+1
set /a z=%random%%%10+1
if %z% == %r% goto DEF
if %r% == 10 set r=0
if %z% == 10 set z=0
set c%r%=%d%
set c%z%=%d%
cls
echo  Revolver ^& Life v1.2
echo     ��
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ��
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo=
echo   %x0%��%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%��%x7%
echo    �j             �j
ECHO=
ECHO �����N��}�l...
pause>nul
::update20170531
set "mark=�� "
set s1=%mark%&set "s2=   "&set "s3=   "
set num=1
set egg=0
:Update1.2
cls
echo=
echo ��ܭn�X����:
echo=
echo  %s1% �ŤM
echo  %s2% ���Y
echo  %s3% ��
echo=
echo  {W}�W {S}�U {J}�T�w
::echo %egg%
echo=
if %egg% == 100 echo �F �A�����p&timeout /t 2 /nobreak>nul
if %egg% == 200 echo �f�A���٪�?&timeout /t 2 /nobreak>nul
if %egg% == 300 echo ��è��?�s�A�O��ť����?&timeout /t 2 /nobreak>nul
if %egg% == 500 echo �A��,�ڴN�n���C���o&timeout /t 2 /nobreak>nul
if %egg% == 1000 echo �A�ۧ䪺&timeout /t 2 /nobreak>nul&exit
choice /c:wsj /m "">NUL
if errorlevel 3 goto enter 
if errorlevel 2 goto s
if errorlevel 1 goto w  
:w
set "s%num%=   "
set /a num=num-1
set /a egg=egg+1
if %num% == 0 set num=3
set s%num%=%mark%
goto Update1.2
:s
set "s%num%=   "
set /a num=num+1
set /a egg=egg+1
if %num% == 4 set num=1
set s%num%=%mark%
goto Update1.2
:enter
set /a npc=%random%%%3+1
if %npc% == 1 set name=�ŤM
if %npc% == 2 set name=���Y
if %npc% == 3 set name=��
if %num% == 1 set nameP=�ŤM
if %num% == 2 set nameP=���Y
if %num% == 3 set nameP=��
echo=
echo �A�X������:    �q���X����:
echo=
echo   %nameP%           %name%
echo=
if %npc% == %num% goto peace
if %num% == 1 (
if %npc% == 2 goto loser
if %npc% == 3 goto winner
)
if %num% == 2 (
if %npc% == 1 goto winner
if %npc% == 3 goto loser
)
if %num% == 3 (
if %npc% == 1 goto loser
if %npc% == 2 goto winner
)
:peace
echo     ����,�Э��q�C
pause>nul
set egg=0
goto Update1.2
:winner
echo     �AĹ�F!��o�����v�C
pause>nul
cls
echo �ѧڤ�i��....
echo     ��
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ��
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo=
echo   %x0%��%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%��%x7%
echo    �j             �j
ECHO=
for /l %%m in (0 +1 160000) do rem delay
goto NPC
:loser
echo     �A��F!�ॢ�����v�C
pause>nul
cls
ECHO �ѹq���i��...
echo     ��
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ��
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo=
echo   %x0%��%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%��%x7%
echo    �j             �j
ECHO=
for /l %%n in (0 +1 160000) do rem delay
goto BCC


:BCC
::��X��
set "x5=^<"
set x6=�X
set "x12= "
set "x13= "
set /a loop=%random%%%15+8
set fu=0
:loop
set c%r%=%c%
set c%z%=%c%
set /a r=r+1
set /a z=z+1
if %r% == 10 set r=0
if %z% == 10 set z=0
set c%r%=%d%
set c%z%=%d%
set /a fu=fu+1
cls
ECHO �ѹq���i��...
echo     ��
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ��
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo=
echo   %x0%��%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%��%x7%
echo    �j              �j
ECHO                    �� 
for /l %%g in (0 +1 %Delay%) do rem delay

if not %fu% == %loop% goto loop

if %c1% == %d% (
set "x5=^<"
set x6=�X
set arr=5
set line=6
set check=lost
timeout /t 1 /nobreak >nul
goto main
)
timeout /t 1 /nobreak >nul
ECHO       ����!
echo=
echo   �A�k�L�F�@�I!
ECHO=
pause>NUL
goto npc

::�ʵe�ĪG
:main
cls
echo=
echo     ��
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ��
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo       Bang!!!
echo   %x0%��%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%��%x7% 
echo    �j              �j
if %arr% == 0 goto dead
if %arr% == 7 goto NPC-dead
for /l %%z in (0 +1 8000) do rem delay
goto %check%
:lost
set "x%arr%= "
set "x%line%= " 
set /a arr=arr-1
set /a line=line-1
set "x%arr%=^<"
set x%line%=�X
goto main
:win
set "x%arr%= "
set "x%line%= " 
set /a arr=arr-1
set /a line=line-1
set "x%arr%=^>"
set x%line%=�X
goto main

:dead
echo=
echo �A���F!
set winr=0
GOTO END
:NPC-dead
echo=
echo   �AĹ�o�ӧQ�F!
set /a winr=winr+1
echo   �A�s�ӤF%winr%��!
GOTO END

:npc
set "x12=^>"
set x13=�X
set "x5= "
set "x6= "

set /a loop=%random%%%15+8
set fu=0
:NPC-loop
set c%r%=%c%
set c%z%=%c%
set /a r=r+1
set /a z=z+1
if %r% == 10 set r=0
if %z% == 10 set z=0
set c%r%=%d%
set c%z%=%d%
set /a fu=fu+1
cls
echo �ѧڤ�i��....
echo     ��
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ��
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo=
echo   %x0%��%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%��%x7%
echo    �j              �j
ECHO    ��                 
for /l %%g in (0 +1 %Delay%) do rem delay
if not %fu% == %loop% goto NPC-loop

if %c1% == %d% (
set "x12=^>"
set x13=�X
set arr=12
set line=13
set check=win
timeout /t 1 /nobreak >nul
goto main
)

timeout /t 1 /nobreak >nul
ECHO       ����!
echo=
echo  ��...�n�i��...!
ECHO=
PAUSE>NUL
goto BCC

:END
echo=
ECHO {R}�b���@�� {Q}�����C��
choice /c:RQ /m "">NUL
if errorlevel 2 EXIT  
if errorlevel 1 GOTO TOP  
