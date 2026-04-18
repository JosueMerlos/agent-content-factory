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
if (Get-Command py -ErrorAction SilentlyContinue) {
    $pythonLauncher = "py"
    $pythonLauncherArgs = @("-3")
} elseif (Get-Command python -ErrorAction SilentlyContinue) {
    $pythonLauncher = "python"
} elseif (Get-Command python3 -ErrorAction SilentlyContinue) {
    $pythonLauncher = "python3"
}

if (-not $pythonLauncher) {
    Write-Error "Python no esta disponible en PATH. Instala Python 3 y vuelve a ejecutar."
    exit 1
}

& $pythonLauncher @pythonLauncherArgs $pythonScript @ScriptArgs
exit $LASTEXITCODE
