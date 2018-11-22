@echo off
Mode con cols=97 lines=9 & color 2F
@echo.
@echo                                          Intelbras DDNS               
@echo -------------------------------------------------------------------------------------------------
@echo - Preencha os campos solicitados para receber o e-mail de confirmacao do nome de dominio criado -
@echo -------------------------------------------------------------------------------------------------
@echo.
@echo off 
set /p mac=Endereco MAC--^> 
set /p host=Host Dominio--^> 
set /p email=E-mail--^> 

Start "" "%ProgramFiles%\Internet Explorer\iexplore.exe" "http://www.ddns-intelbras.com.br/enviaEmail.aspx?mac=%mac%&hostname=%host%&email=%email%"


