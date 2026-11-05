# --- 1. CONFIGURATION ---
$OutputMsi = "PyRxEmbeddedSetup.msi"
$MainWxsFile = "main.wxs"

# --- 2. VALIDATION ---
Write-Host "Checking project layout..." -ForegroundColor Cyan
if (-not (Test-Path $MainWxsFile)) { Write-Error "Missing '$MainWxsFile'!"; exit }
if (-not (Test-Path ".\pyrx_embedded.bundle")) { Write-Error "Target deployment bundle directory not found!"; exit }

# --- 3. WIX COMPILATION ---
Write-Host "Compiling setup package natively using WiX v7..." -ForegroundColor Green
wix build $MainWxsFile -acceptEula wix7 -out $OutputMsi

# --- 4. CLEANUP & VERIFICATION ---
if (Test-Path $OutputMsi) {
    Write-Host "`nCompilation Successful!" -ForegroundColor Cyan
    Write-Host "Generated Installer Asset: $(Resolve-Path $OutputMsi)" -ForegroundColor Yellow
} else {
    Write-Error "`nCompilation Failed!"
}
