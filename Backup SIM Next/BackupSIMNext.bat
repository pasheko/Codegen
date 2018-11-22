@echo off
echo PROCESSOR_ARCHITECTURE var:
echo %PROCESSOR_ARCHITECTURE% | find /i "x86" > nul
	if %errorlevel%==0 (
		goto:3264
	) else (
		goto:valid
	)
	
			:valid
			IF EXIST "%ProgramFiles(x86)%\Intelbras\SIMNext\" (
			goto:x86
			) ELSE (
			goto:3264
			)
			:x86
				XCOPY /y /q "C:\ProgramData\Intelbras\SIMNext\DatabaseContext.sdf" C:\backupsimnext\SIMNext\ /K 
				XCOPY /y /q /S "C:\ProgramData\Intelbras\SIMNext\CrashDumps" C:\backupsimnext\SIMNext\ /K
				XCOPY /y /q "C:\Program Files (x86)\Intelbras\SIMNext\SIM Next\sdk_log\sdk_log.log" C:\backupsimnext\SIMNext\ /K
				XCOPY /y /q "C:\Program Files (x86)\Intelbras\SIMNext\SIM Next\errorLog.txt" C:\backupsimnext\SIMNext\ /K
				start %windir%\explorer.exe "C:\backupsimnext\"
				
			:3264
				XCOPY /y /q "C:\ProgramData\Intelbras\SIMNext\DatabaseContext.sdf" C:\backupsimnext\SIMNext\ /K 
				XCOPY /y /q /S "C:\ProgramData\Intelbras\SIMNext\CrashDumps" C:\backupsimnext\SIMNext\ /K 
				XCOPY /y /q "C:\Program Files\Intelbras\SIMNext\SIM Next\sdk_log\sdk_log.log" C:\backupsimnext\SIMNext\ /K
				XCOPY /y /q "C:\Program Files\Intelbras\SIMNext\SIM Next\errorLog.txt" C:\backupsimnext\SIMNext\ /K
				start %windir%\explorer.exe "C:\backupsimnext\"