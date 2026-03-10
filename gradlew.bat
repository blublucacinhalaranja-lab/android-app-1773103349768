@rem
@rem Gradle wrapper script for Windows
@rem
@rem Based on the gradle wrapper script distributed as part of Gradle.
@rem
@rem You can redistribute this script under the terms of the Gradle license.
@rem See http://www.gradle.org for details.
@rem

@echo off

setlocal

set APP_BASE_NAME=gradle
set APP_HOME=%~dp0

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME (
  set JAVA="%JAVA_HOME%\bin\java.exe"
) else (
  set JAVA=java.exe
  if not exist "%JAVA%" (
    echo.
    echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
    echo.
    echo Please set the JAVA_HOME variable in your environment to match the
    echo location of your Java installation.
    echo.
    exit /b 1
  )
)

@rem Execute Gradle
"%JAVA%" %DEFAULT_JVM_OPTS% "-Dorg.gradle.appname=%APP_BASE_NAME%" %GRADLE_OPTS% -classpath "%APP_HOME%\gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*

endlocal