@ECHO OFF
SET DIR=%~dp0
java -classpath "%DIR%gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%
