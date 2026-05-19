$ErrorActionPreference = "Stop"

$repoUrl = "https://github.com/public-apis/public-apis.git"
$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$target = Join-Path $root "external\public-apis\repo"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
  throw "Git is not installed or not available in PATH. Please install Git for Windows first."
}

if (Test-Path $target) {
  Write-Host "Updating public-apis in: $target"
  git -C $target fetch origin master
  git -C $target checkout master
  git -C $target pull --ff-only origin master
} else {
  Write-Host "Cloning public-apis into: $target"
  New-Item -ItemType Directory -Force -Path (Split-Path $target) | Out-Null
  git clone --depth 1 --branch master $repoUrl $target
}

Write-Host "public-apis is ready at: $target"
