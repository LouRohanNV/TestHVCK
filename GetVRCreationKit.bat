@echo off
setlocal
pushd %~dp0

rem Figure out if we should append the -prompt argument
set PROMPT_ARGUMENT=
for %%P in (%*) do if /I "%%P" == "--prompt" goto no_prompt_argument
for %%P in (%*) do if /I "%%P" == "--force" goto no_prompt_argument
set PROMPT_ARGUMENT=--prompt
:no_prompt_argument

rem Sync the dependencies...
.\Engine\Binaries\DotNET\GitDependencies.exe %PROMPT_ARGUMENT% %*
if ERRORLEVEL 1 goto error

rem Install prerequisites...
echo Installing prerequisites...
start /wait Engine\Extras\Redist\en-us\UE4PrereqSetup_x64.exe /quiet

rem Done!
goto :EOF

rem Error happened. Wait for a keypress before quitting.
:error
pause

