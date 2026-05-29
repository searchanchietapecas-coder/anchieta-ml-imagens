@echo off
chcp 65001 > nul
cd /d "%~dp0"
echo.
echo ============================================================
echo  Anchieta ML - Subir catalogo para GitHub Pages
echo ============================================================
echo.
echo ANTES de rodar, crie o repositorio em:
echo   https://github.com/new
echo.
echo SUGESTAO de configuracao do repo:
echo   - Nome:        anchieta-ml-imagens
echo   - Visibilidade: PUBLIC (necessario p/ GitHub Pages gratis)
echo   - NAO adicionar README, .gitignore ou license
echo.
set /p USUARIO=Digite seu USUARIO GitHub (ex: anchieta-pecas):
if "%USUARIO%"=="" (echo Usuario vazio. Abortando.& pause & exit /b 1)
set /p REPO=Digite o NOME do repositorio (Enter = anchieta-ml-imagens):
if "%REPO%"=="" set REPO=anchieta-ml-imagens
echo.
echo Configurando remote para: https://github.com/%USUARIO%/%REPO%.git
git remote remove origin 2>nul
git remote add origin https://github.com/%USUARIO%/%REPO%.git
echo.
echo Enviando ~135 MB para o GitHub (pode demorar alguns minutos)...
echo (Se pedir login, abrira navegador para autenticar)
echo.
git push -u origin main
if errorlevel 1 (
  echo.
  echo [ERRO] Push falhou. Verifique:
  echo   - Repositorio existe em github.com/%USUARIO%/%REPO% ?
  echo   - Voce esta logado no git? Tente: git config --global credential.helper manager
  pause
  exit /b 1
)
echo.
echo ============================================================
echo  SUCESSO! Agora ative o GitHub Pages:
echo ============================================================
echo.
echo  1. Acesse: https://github.com/%USUARIO%/%REPO%/settings/pages
echo  2. Em "Source", selecione: Deploy from a branch
echo  3. Em "Branch", selecione: main / (root)
echo  4. Clique em Save
echo.
echo  Em 1-2 minutos suas URLs ficarao ativas em:
echo    https://%USUARIO%.github.io/%REPO%/imagens/000001.jpg
echo    https://%USUARIO%.github.io/%REPO%/index.html
echo.
echo  DEPOIS volte ao Claude e me passe o nome de usuario + repo
echo  para eu atualizar o .env do gerador.
echo.
pause
