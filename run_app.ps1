param(
  [switch]$Index
)

Set-Location -Path $PSScriptRoot
if ($Index) {
  .\venv\Scripts\python.exe .\store_index.py
}
.\venv\Scripts\python.exe .\app.py
