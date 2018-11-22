@echo off 

	MODE CON COLS=28 LINES=5
	COLOR 2f

	echo ---------------------------
	echo - Ativando a rede Interna -
	echo ---------------------------

netsh interface set interface "externa" Disabled && netsh interface set interface "interna" Enabled  >nul 2>&1


	TIMEOUT 6 >nul

	net use L: \\sjo-file-05\livre$  >nul 2>&1
	net use U: \\sjo-file-05\Usuarios$\do049344  >nul 2>&1
	net use V: \\sjo-file-05\deptos$  >nul 2>&1
	net use P: \\sjo-file-05\DepartamentosPLH$   >nul 2>&1