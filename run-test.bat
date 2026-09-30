@echo off
setlocal

set "environment=%~1"
set "api=%~2"
if "%environment%"=="" set "environment=dev"
if "%api%"=="" set "api=all"

if /I "%api%"=="all" (
	set "tags=@all"
) else (
	set "tags=@%api%,@smoke"
)

call "%~dp0mvnw.cmd" test -Dkarate.env="%environment%" -Dkarate.tags="%tags%"
exit /b %errorlevel%
