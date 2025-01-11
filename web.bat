@echo off
REM Define paths for UFT execution
set UFT_PATH="C:\Program Files (x86)\OpenText\UFT One\bin\UFTBatchRunnerCMD.exe"
set TEST_SOURCE="D:\UFT Project\Web\Tests\E2E_Shopping"
set RESULT_PATH="D:\UFT Project\Results"

REM Verify UFT executable path
echo Checking UFT Installation Path...
if not exist %UFT_PATH% (
    echo Error: UFT executable not found at %UFT_PATH%!
    pause
    exit /b 1
)

REM Verify test source path
echo Verifying test source path...
if not exist %TEST_SOURCE% (
    echo Error: Test source path does not exist at %TEST_SOURCE%!
    pause
    exit /b 1
)

REM Run the UFT test
echo Running UFT Test...
%UFT_PATH% -source %TEST_SOURCE% -result %RESULT_PATH% > uft_log.txt 2>&1

REM Check the execution result
IF %ERRORLEVEL% EQU 0 (
    echo Test executed successfully! Logs are saved in uft_log.txt.
) ELSE (
    echo Test execution failed! Logs are saved in uft_log.txt.
)

pause
