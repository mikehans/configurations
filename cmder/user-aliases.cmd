;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
pwd=cd
clear=cls
history=cat %CMDER_ROOT%\config\.history
unalias=alias /d $1
vi=c:\vim\vim80\vim.exe $*
vimdiff=c:\vim\vim80\vim.exe -d $*
cmderr=cd /d "%CMDER_ROOT%"
gvim=c:\vim\vim80\gvim.exe $1  
nvimg=c:\nvim\bin\nvim-qt.exe $1
nvim=c:\nvim\bin\nvim.exe $1
