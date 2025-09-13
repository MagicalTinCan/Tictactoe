@echo off
cls
mode 30,10
color 0A
::Top Row
set q=1
set w=2
set e=3
::Top Row

::Middle Row
set a=4
set s=5
set d=6
::Middle Row

::Bottom Row
set z=7
set x=8
set c=9
::Bottom Row

set Winner=0
set Action=0
set Turn=0
set PlayerOneSymbol=X
set PlayerTwoSymbol=O
set Symbol=None



:printBoard



cls
echo.
echo.
echo          %q% ^| %w% ^| %e%
echo         -----------
echo          %a% ^| %s% ^| %d%
echo         -----------
echo          %z% ^| %x% ^| %c%
echo.

if not %q% == 1 if not %w% == 2 if not %e% == 3 if not %a% == 4 if not %s% == 5 if not %d% == 6 if not %z% == 7 if not %x% == 8 if not %c% == 9 set Winner=None

if %q% == %w% if %w% == %e% set Winner=%q%
if %a% == %s% if %s% == %d% set Winner=%d%
if %z% == %x% if %x% == %c% set Winner=%c%

if %q% == %a% if %a% == %z% set Winner=%q%
if %w% == %s% if %s% == %x% set Winner=%w%
if %e% == %d% if %d% == %c% set Winner=%e%

if %q% == %s% if %s% == %c% set Winner=%q%
if %e% == %s% if %s% == %z% set Winner=%e%

if not %Winner% == 0 goto endGame


set /p Action=Enter position:
if %Action% ==  1  goto legitMove
if %Action% ==  2  goto legitMove
if %Action% ==  3  goto legitMove
if %Action% ==  4  goto legitMove
if %Action% ==  5  goto legitMove
if %Action% ==  6  goto legitMove
if %Action% ==  7  goto legitMove
if %Action% ==  8  goto legitMove
if %Action% ==  9  goto legitMove
goto printBoard
:legitMove

::Sets symbol
if %Turn% == 0 set Symbol=%PlayerOneSymbol%
if %Turn% == 1 set Symbol=%PlayerTwoSymbol%
::Sets symbol

set LegitSpot=0

if %Action% == %q% (
set q=%Symbol%
set LegitSpot=1
)
if %Action% == %w% (
set w=%Symbol%
set LegitSpot=1
)
if %Action% == %e% (
set e=%Symbol%
set LegitSpot=1
)

if %Action% == %a% (
set a=%Symbol%
set LegitSpot=1
)
if %Action% == %s% (
set s=%Symbol%
set LegitSpot=1
)
if %Action% == %d% (
set d=%Symbol%
set LegitSpot=1
)

if %Action% == %z% (
set z=%Symbol%
set LegitSpot=1
)
if %Action% == %x% (
set x=%Symbol%
set LegitSpot=1
)
if %Action% == %c% (
set c=%Symbol%
set LegitSpot=1
)

if %LegitSpot% == 1 (
	if %Turn% == 0 (
		set Turn=1
	) else (
		set Turn=0
	)
)



goto printBoard

:endGame
color F3
echo Winner: %Winner%
set /p hold=
cls
color
mode 120,30