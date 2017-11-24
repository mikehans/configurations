:: use this file to run your own startup commands
:: use  in front of the command to prevent printing the command

:: call "%GIT_INSTALL_ROOT%/cmd/start-ssh-agent.cmd"
:: set "PATH=%CMDER_ROOT%\vendor\whatever;%PATH%"
set JAVA_HOME=C:\adobe\jdk1.8.0_144
set M2_HOME=c:\adobe\apache-maven-3.1.1
set M2=%M2_HOME%\bin
set PATH=%PATH%;%JAVA_HOME%\bin;%M2%
:: set PATH=%CMDER_ROOT%\vendor\node-v8.9.1;%PATH%
