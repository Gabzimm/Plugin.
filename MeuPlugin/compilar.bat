@echo off
echo Compilando plugin...

:: Encontra o Java
for /f "tokens=*" %%i in ('where java') do set JAVA_PATH=%%i
set JAVA_PATH=%JAVA_PATH:\java.exe=%
set JAR_PATH=%JAVA_PATH%\jar.exe

:: Compila os arquivos Java
"%JAVA_PATH%\javac.exe" -cp "lib\spigot-api.jar;lib\jda.jar" -d bin src\seuplugin\*.java

:: Cria o .jar
"%JAR_PATH%" cvf DiscordVinculador.jar -C bin . plugin.yml config.yml

echo.
echo ✅ Plugin compilado! Arquivo: DiscordVinculador.jar
pause