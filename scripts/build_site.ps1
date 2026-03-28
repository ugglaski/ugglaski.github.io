<#
Build Jekyll site and optionally copy output to D:\site.
Usage:
  .\build_site.ps1
  .\build_site.ps1 -Destination "D:\site"
#>
param(
    [string]$Destination = "D:\site"
)

Write-Host "Budowanie strony Jekyll..."
bundle exec jekyll build

if ($Destination) {
    Write-Host "Kopiowanie _site do $Destination"
    if (Test-Path $Destination) {
        Remove-Item -Recurse -Force "$Destination\*" -ErrorAction SilentlyContinue
    } else {
        New-Item -ItemType Directory -Path $Destination | Out-Null
    }

    Copy-Item -Path "_site\*" -Destination $Destination -Recurse -Force
    Write-Host "Skopiowano do $Destination"
}
