param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$ScriptArgs
)

$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$pythonScript = Join-Path $repoRoot "scripts/install-agent-content-factory"

if (-not (Test-Path $pythonScript)) {
    Write-Error "No se encontro el script: $pythonScript"
    exit 1
}

$pythonLauncher = $null
$pythonLauncherArgs = @()

# Funcion para detectar alias de Microsoft Store
function Test-IsMicrosoftStoreAlias {
    param([string]$CommandPath)
    if (-not $CommandPath) { return $false }
    $target = (Get-Item $CommandPath -ErrorAction SilentlyContinue).Target -as [string]
    return $target -like "*AppData*Local*Packages*"
}

# 1. Buscar via py launcher (preferido)
if (Get-Command py -ErrorAction SilentlyContinue) {
    $pyPath = (Get-Command py).Source
    if (Test-IsMicrosoftStoreAlias -CommandPath $pyPath) {
        Write-Host "ADVERTENCIA: 'py' apunta a Microsoft Store. Instala Python real desde python.org" -ForegroundColor Yellow
    } else {
        $pythonLauncher = "py"
        $pythonLauncherArgs = @("-3")
    }
}

# 2. Buscar via python/python3
if (-not $pythonLauncher) {
    foreach ($cmd in @("python", "python3")) {
        if (Get-Command $cmd -ErrorAction SilentlyContinue) {
            $cmdPath = (Get-Command $cmd).Source
            if (Test-IsMicrosoftStoreAlias -CommandPath $cmdPath) {
                Write-Host "ADVERTENCIA: '$cmd' apunta a Microsoft Store. Instala Python real desde python.org" -ForegroundColor Yellow
            } else {
                $pythonLauncher = $cmd
                break
            }
        }
    }
}

# 3. Buscar en rutas comunes de Windows si no se encontró
if (-not $pythonLauncher) {
    $commonPaths = @(
        "$env:LOCALAPPDATA\Programs\Python\Python313\python.exe",
        "$env:LOCALAPPDATA\Programs\Python\Python312\python.exe",
        "$env:LOCALAPPDATA\Programs\Python\Python311\python.exe",
        "$env:USERPROFILE\AppData\Local\Programs\Python\Python313\python.exe",
        "$env:USERPROFILE\AppData\Local\Programs\Python\Python312\python.exe",
        "C:\Python313\python.exe",
        "C:\Python312\python.exe"
    )
    foreach ($path in $commonPaths) {
        if (Test-Path $path) {
            $pythonLauncher = $path
            break
        }
    }
}

if (-not $pythonLauncher) {
    Write-Error @"
Python no esta disponible en PATH ni en rutas comuns.

Pasos para resolver:
1. Descarga Python desde https://www.python.org/downloads/
2. Durante la instalación, MARCA la opción 'Add Python to PATH'
3. Reinicia la terminal despues de instalar

TambienPuedes usar el comando con bypass de ExecutionPolicy:
powershell.exe -ExecutionPolicy Bypass -File .\scripts\install-agent-content-factory.ps1 --agent all --mode copy
"@
    exit 1
}

& $pythonLauncher @pythonLauncherArgs $pythonScript @ScriptArgs
exit $LASTEXITCODE
