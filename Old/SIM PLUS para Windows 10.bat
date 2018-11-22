@echo off
Mode con cols=75 lines=9 & color 2F
@echo off
Net stop CDPSvc
@echo off
sc config "CDPSvc" start= disabled
@echo off

cls
@echo off
Mode con cols=75 lines=9 & color 2F
@echo.
@echo                            SIM PLUS for Windows 10              
@echo ---------------------------------------------------------------------------
@echo - Foi ativado o recurso de busca de dispositivo do SIM PLUS no Windows 10 -
@echo ---------------------------------------------------------------------------
@echo.

pause
