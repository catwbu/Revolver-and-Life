@echo off
title Gaming
mode con cols=30 lines=18
set winr=0
:TOP
set "c=○" 
set "d=●"
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
echo     ▼
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ⊙
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo=
echo   %x0%○%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%○%x7%
echo    大             大
ECHO=
ECHO 按任意鍵開始...
pause>nul
::update20170531
set "mark=→ "
set s1=%mark%&set "s2=   "&set "s3=   "
set num=1
set egg=0
:Update1.2
cls
echo=
echo 選擇要出的拳:
echo=
echo  %s1% 剪刀
echo  %s2% 石頭
echo  %s3% 布
echo=
echo  {W}上 {S}下 {J}確定
::echo %egg%
echo=
if %egg% == 100 echo 幹 你玩殺小&timeout /t 2 /nobreak>nul
if %egg% == 200 echo 耖你媽還玩?&timeout /t 2 /nobreak>nul
if %egg% == 300 echo 白癡嗎?叫你別玩聽不懂?&timeout /t 2 /nobreak>nul
if %egg% == 500 echo 再玩,我就要關遊戲囉&timeout /t 2 /nobreak>nul
if %egg% == 1000 echo 你自找的&timeout /t 2 /nobreak>nul&exit
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
if %npc% == 1 set name=剪刀
if %npc% == 2 set name=石頭
if %npc% == 3 set name=布
if %num% == 1 set nameP=剪刀
if %num% == 2 set nameP=石頭
if %num% == 3 set nameP=布
echo=
echo 你出的拳為:    電腦出的為:
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
echo     平手,請重猜。
pause>nul
set egg=0
goto Update1.2
:winner
echo     你贏了!獲得先攻權。
pause>nul
cls
echo 由我方進攻....
echo     ▼
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ⊙
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo=
echo   %x0%○%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%○%x7%
echo    大             大
ECHO=
for /l %%m in (0 +1 160000) do rem delay
goto NPC
:loser
echo     你輸了!喪失先攻權。
pause>nul
cls
ECHO 由電腦進攻...
echo     ▼
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ⊙
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo=
echo   %x0%○%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%○%x7%
echo    大             大
ECHO=
for /l %%n in (0 +1 160000) do rem delay
goto BCC


:BCC
::轉幾圈
set "x5=^<"
set x6=—
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
ECHO 由電腦進攻...
echo     ▼
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ⊙
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo=
echo   %x0%○%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%○%x7%
echo    大              大
ECHO                    △ 
for /l %%g in (0 +1 %Delay%) do rem delay

if not %fu% == %loop% goto loop

if %c1% == %d% (
set "x5=^<"
set x6=—
set arr=5
set line=6
set check=lost
timeout /t 1 /nobreak >nul
goto main
)
timeout /t 1 /nobreak >nul
ECHO       喀擦!
echo=
echo   你逃過了一截!
ECHO=
pause>NUL
goto npc

::動畫效果
:main
cls
echo=
echo     ▼
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ⊙
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo       Bang!!!
echo   %x0%○%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%○%x7% 
echo    大              大
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
set x%line%=—
goto main
:win
set "x%arr%= "
set "x%line%= " 
set /a arr=arr-1
set /a line=line-1
set "x%arr%=^>"
set x%line%=—
goto main

:dead
echo=
echo 你死了!
set winr=0
GOTO END
:NPC-dead
echo=
echo   你贏得勝利了!
set /a winr=winr+1
echo   你連勝了%winr%次!
GOTO END

:npc
set "x12=^>"
set x13=—
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
echo 由我方進攻....
echo     ▼
echo   %c0%%c1%%c2%
echo  %c9%    %c3%
echo     ⊙
echo  %c8%    %c4%
echo   %c7%%c6%%c5%
echo=
echo=
echo   %x0%○%x1%%x2%%x3%%x4%%x5%%x6% %x13%%x12%%x11%%x10%%x9%%x8%○%x7%
echo    大              大
ECHO    △                 
for /l %%g in (0 +1 %Delay%) do rem delay
if not %fu% == %loop% goto NPC-loop

if %c1% == %d% (
set "x12=^>"
set x13=—
set arr=12
set line=13
set check=win
timeout /t 1 /nobreak >nul
goto main
)

timeout /t 1 /nobreak >nul
ECHO       喀擦!
echo=
echo  阿...好可惜...!
ECHO=
PAUSE>NUL
goto BCC

:END
echo=
ECHO {R}在玩一次 {Q}結束遊戲
choice /c:RQ /m "">NUL
if errorlevel 2 EXIT  
if errorlevel 1 GOTO TOP  
