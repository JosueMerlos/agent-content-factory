@echo off
setlocal EnableDelayedExpansion

set "REPO_URL=https://github.com/JosueMerlos/agent-content-factory"
set "INSTALL_TEMP=%TEMP%\acf-install-%RANDOM%"
set "FAILED=0"

if "%~1"=="" (
    echo Uso: install-agent-content-factory-remote.cmd [--agent all^|codex^|claude^|opencode] [--mode copy^|link] [--help]
    echo.
    echo Ejemplo:
    echo   .\scripts\install-agent-content-factory-remote.cmd --agent all --mode copy
    exit /b 1
)

if "%~1"=="--help" (
    echo Usage: install-agent-content-factory-remote.cmd [OPTIONS]
    echo.
    echo Options:
    echo   --agent    all, codex, claude, opencode    (default: all)
    echo   --mode    copy, link                     (default: copy)
    echo   --help    Show this help message
    echo.
    echo Examples:
    echo   .\scripts\install-agent-content-factory-remote.cmd --agent all --mode copy
    echo   .\scripts\install-agent-content-factory-remote.cmd --agent codex
    exit /b 0
)

echo [*] Verificando conexion a GitHub...
powershell.exe -Command "try { Invoke-WebRequest -Uri 'https://api.github.com' -TimeoutSec 10 -UseBasicParsing -ErrorAction Stop ^| Out-Null; exit 0 } catch { exit 1 }"
if errorlevel 1 (
    echo [ERROR] No se pudo conectar a GitHub. Verifica tu conexion a internet.
    echo        Si estas en una red corporativa, verifica el proxy o usa el instalador local.
    set "FAILED=1"
    goto :cleanup
)

echo [*] Descargando agent-content-factory...
powershell.exe -Command "Remove-Item -Path '%INSTALL_TEMP%' -Recurse -Force -ErrorAction SilentlyContinue; New-Item -ItemType Directory -Path '%INSTALL_TEMP%' -Force ^| Out-Null; try { Invoke-WebRequest -Uri '%REPO_URL%/archive/refs/heads/main.zip' -OutFile '%INSTALL_TEMP%.zip' -TimeoutSec 60 -UseBasicParsing -ErrorAction Stop } catch { Write-Error 'Fallo la descarga: $_'; exit 1 }; Expand-Archive -Path '%INSTALL_TEMP%.zip' -DestinationPath '%INSTALL_TEMP%' -Force; Get-ChildItem -Path '%INSTALL_TEMP%' -Directory -ErrorAction SilentlyContinue ^| Select-Object -First 1 ^| Select-Object -ExpandProperty FullName" > "%INSTALL_TEMP%\path.txt"

for /f "usebackq delims=" %%p in ("%INSTALL_TEMP%\path.txt") do set "REPO_DIR=%%p"

if not exist "%REPO_DIR%" (
    echo [ERROR] Fallo la descarga. Verifica tu conexion a internet.
    set "FAILED=1"
    goto :cleanup
)

echo [*] Ejecutando instalador desde %REPO_DIR%...
powershell.exe -ExecutionPolicy Bypass -File "%REPO_DIR%\scripts\install-agent-content-factory.ps1" %*
if errorlevel 1 (
    echo [ERROR] El instalador fallo. Revisa los mensajes arriba.
    set "FAILED=1"
    goto :cleanup
)

:cleanup
echo [*] Limpiando archivos temporales...
rmdir /s /q "%INSTALL_TEMP%" 2>nul
if exist "%INSTALL_TEMP%.zip" del "%INSTALL_TEMP%.zip" 2>nul

endlocal

exit /b %FAILED%