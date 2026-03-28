<#
Creates a new Jekyll post file in _posts with proper front matter.
Usage: .\new_post.ps1 -Title "Tytuł wpisu" -Tags "tag1,tag2"
#>
param(
    [Parameter(Mandatory=$true)]
    [string]$Title,

    [string]$Category = "blog",
    [string]$Tags = "",

    [switch]$Open
)

$today = Get-Date -Format "yyyy-MM-dd"
$slug = $Title.ToLower() -replace '[^a-z0-9]+','-' -replace '(^-|-$)',''
$filename = "${today}-${slug}.md"
$path = Join-Path -Path (Resolve-Path "_posts").Path -ChildPath $filename

if (Test-Path $path) {
    Write-Error "Plik $filename już istnieje w _posts."
    exit 1
}

$frontMatter = @"
---
layout: post
title: "$Title"
date: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss +/-0000")
categories: [$Category]
tags: [$(($Tags -split ',') -join ', ')]
---

"@

$frontMatter | Out-File -FilePath $path -Encoding utf8
Write-Host "Utworzono nowy post: $path"

if ($Open) {
    if ($env:EDITOR) {
        & $env:EDITOR $path
    } else {
        notepad $path
    }
}
