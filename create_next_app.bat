@echo off
REM Batch file to create Next.js app with required settings

REM Open PowerShell, set execution policy for the session, and run the npx command
powershell -NoExit -Command "Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; cd 'C:\Repos\websites\SorenFrederiksen'; npx create-next-app@latest website --typescript --use-npm --eslint --tailwind --src-dir --app --no-experimental-app-router --no-interactive" 