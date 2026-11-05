# --- 1. CONFIGURATION ---
$OutputMsi   = "PyRxAcadEmbeddedSetup.msi"
$MainWxsFile = "main_acad.wxs"

# Run from this script's folder so relative paths are stable regardless of CWD
Set-Location -LiteralPath $PSScriptRoot

# --- 2. VALIDATION ---
Write-Host "Checking project layout..." -ForegroundColor Cyan
if (-not (Test-Path $MainWxsFile)) { Write-Error "Missing '$MainWxsFile'!"; exit }
if (-not (Test-Path "..\resources\acad\PackageContents.xml")) {
    Write-Error "Missing AutoCAD manifest: ..\resources\acad\PackageContents.xml"; exit }
if (-not (Test-Path "..\resources\common\Contents\Python")) {
    Write-Error "Missing shared Python runtime: ..\resources\common\Contents\Python"; exit }
if (-not (Test-Path "..\resources\common\Contents\README.txt")) {
    Write-Error "Missing shared README: ..\resources\common\Contents\README.txt"; exit }

# --- 3. WIX COMPILATION ---
Write-Host "Compiling setup package natively using core WiX v7..." -ForegroundColor Green

# Simple core compile with zero external extension requirements!
wix build $MainWxsFile -acceptEula wix7 -out $OutputMsi

# --- 4. VERIFICATION ---
if (Test-Path $OutputMsi) {
    Write-Host "`nSuccess! Standalone single-file installer built perfectly." -ForegroundColor Cyan
    Write-Host "Generated Installer Asset: $(Resolve-Path $OutputMsi)" -ForegroundColor Yellow
} else {
    Write-Error "`nCompilation Failed!"
}