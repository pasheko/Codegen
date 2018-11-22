@echo off
Mode con cols=79 lines=12 & color 2F
@echo.
@echo                         Intelbras Get Stream API
@echo -------------------------------------------------------------------------------
@echo - Preencha os campos solicitados para abri o stream de Camera IP no Navegador -
@echo -------------------------------------------------------------------------------
@echo -    "Dica: IP: 10.1.45.2 | Porta: 9002 | Usuario:admin | Senha: admin"      -
@echo -------------------------------------------------------------------------------
@echo.
@echo off 
set /p ip=Endereco de IP--^> 
set /p port=Porta HTTP--^> 
set /p user=Usuario--^> 
set /p pwd=senha--^> 
Start "Chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://%user%:%pwd%@%ip%:%port%/cgi-bin/mjpg/video.cgi?channel=1&subtype=0"
