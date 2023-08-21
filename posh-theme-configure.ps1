New-Item -Path $PROFILE -Type File -Force
Add-Content -Path $PROFILE "oh-my-posh init pwsh --config '$env:POSH_THEMES_PATH/jandedobbeleer.omp.json' | Invoke-Expression"
. $PROFILE