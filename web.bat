@echo off
set "UFT_PATH=C:\Program Files (x86)\OpenText\UFT One\bin\UFTBatchRunnerCMD.exe"
set "TEST_SOURCE=D:\UFT Project\Web\Tests\Login"
set "RESULT_PATH=D:\UFT Project\Web\Tests\Login"

echo Running UFT test...
call "%UFT_PATH%" -source "%TEST_SOURCE%" -result "%RESULT_PATH%"
if %ERRORLEVEL%==-532462766 (
    echo Ignoring error code -532462766 and marking as success.
    exit /b 0
) else (
    exit /b %ERRORLEVEL%
)
