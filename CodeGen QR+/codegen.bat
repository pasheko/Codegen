@echo off
chcp 65001
cls
MODE CON COLS=80 LINES=6
@echo off
color 1f
echo.
echo.
set /p DATA=Insira o Número de Série a ser codificado--^> 
echo.
echo.
	start %windir%\explorer.exe "https://chart.googleapis.com/chart?cht=qr&chl=%DATA%&chs=160x160&chld=L|0"

	
	