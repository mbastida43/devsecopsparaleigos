#Requires -Version 5.1
<#
.SYNOPSIS
    Abre a apresentacao DevSecOps para Leigos com servidor local.
.DESCRIPTION
    Inicia um servidor Python em segundo plano na porta 3000 e abre o browser.
    Pressione ENTER para encerrar o servidor ao sair.
#>

$Host.UI.RawUI.WindowTitle = 'Mentor IA - DevSecOps para Leigos'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$url  = 'http://localhost:3000/DevSecOps%20para%20Leigos.html'

Write-Host ''
Write-Host '  ==========================================' -ForegroundColor Cyan
Write-Host '   Mentor IA - DevSecOps para Leigos' -ForegroundColor Cyan
Write-Host '  ==========================================' -ForegroundColor Cyan
Write-Host ''

# Verifica se o Python esta disponivel
if (-not (Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Host '  [ERRO] Python nao encontrado. Instale em https://python.org' -ForegroundColor Red
    Read-Host '  Pressione ENTER para sair'
    exit 1
}

Write-Host '  Iniciando servidor local na porta 3000...' -ForegroundColor Yellow
$server = Start-Process -FilePath 'python' `
    -ArgumentList '-m', 'http.server', '3000', '--directory', $root `
    -WindowStyle Hidden `
    -PassThru

Start-Sleep -Seconds 2

Write-Host '  Abrindo apresentacao no browser...' -ForegroundColor Green
Start-Process $url

Write-Host ''
Write-Host '  Tudo pronto! O Ollama precisa estar rodando.' -ForegroundColor Green
Write-Host ''
Write-Host '  Pressione ENTER para ENCERRAR o servidor.' -ForegroundColor DarkGray
$null = Read-Host

Write-Host '  Encerrando servidor...' -ForegroundColor Yellow
Stop-Process -Id $server.Id -Force -ErrorAction SilentlyContinue
Write-Host '  Servidor encerrado. Ate logo!' -ForegroundColor Cyan
Start-Sleep -Seconds 1
