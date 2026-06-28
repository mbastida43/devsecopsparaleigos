@echo off
title Mentor IA - DevSecOps para Leigos
cls
echo.
echo  ==========================================
echo   Mentor IA - DevSecOps para Leigos
echo  ==========================================
echo.
echo  Iniciando servidor local...

REM Inicia o servidor Python em segundo plano numa janela minimizada
start "ServidorLocal" /MIN cmd /c "python -m http.server 3000 --directory "%~dp0""

REM Aguarda 2 segundos para o servidor subir
timeout /t 2 /nobreak >nul

REM Abre o browser automaticamente
echo  Abrindo apresentacao no browser...
start "" "http://localhost:3000/DevSecOps%%20para%%20Leigos.html"

echo.
echo  Tudo pronto! O Ollama precisa estar rodando.
echo.
echo  Pressione qualquer tecla para ENCERRAR o servidor.
pause >nul

REM Encerra o servidor ao sair
taskkill /F /FI "WINDOWTITLE eq ServidorLocal" >nul 2>&1
echo  Servidor encerrado. Ate logo!
timeout /t 2 /nobreak >nul
