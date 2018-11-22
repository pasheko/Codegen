@echo off
@echo off
Mode con cols=70 lines=6 & color 2F
echo Acesso WEB Intelbras
@echo off 
set /p ip=Endereco de IP: --^> 
set /p http=Valor da Porta HTTP --^>
Start "" "%ProgramFiles%\Internet Explorer\iexplore.exe" "http://%ip%:%http%/"


