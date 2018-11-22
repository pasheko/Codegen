
@echo off 
	MODE CON COLS=28 LINES=5
	COLOR 2f

	echo ---------------------------
	echo - Ativando a rede Externa -
	echo ---------------------------

	netsh interface set interface "externa" Enabled && netsh interface set interface "interna" Disabled >nul 2>&1

	TIMEOUT 6 >nul

	Net use L: /delete >nul 2>&1
	Net use U: /delete >nul 2>&1
	Net use V: /delete >nul 2>&1
	Net use P: /delete >nul 2>&1

