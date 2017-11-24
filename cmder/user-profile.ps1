# Use this file to run your own startup commands

## Prompt Customization
<#
.SYNTAX
    <PrePrompt><CMDER DEFAULT>
    Î» <PostPrompt> <repl input>
.EXAMPLE
    <PrePrompt>N:\Documents\src\cmder [master]
    Î» <PostPrompt> |
#>

Import-Module posh-git

[ScriptBlock]$PrePrompt = {
}

# Replace the cmder prompt entirely with this.
[ScriptBlock]$CmderPrompt = {
    $id = 1
    $historyItem = Get-History -Count 1
    if ($historyItem)
    {
        $id = $historyItem.Id + 1
    }

    write-host "PS [$id] > " -NoNewline -foregroundcolor yellow
    write-host $pwd -foregroundcolor green -NoNewLine
    # Write-VcsStatus comes from posh-git
    Write-VcsStatus

}

# [ScriptBlock]$PostPrompt = {

# }

## <Continue to add your own>

set-alias repeat invoke-history
set-alias gvim C:\vim\vim80\gvim.exe
set-alias vim c:\vim\vim80\vim.exe 

function cdhome {
  set-location c:\users\d813597
}

function cdmulti {
  set-location D:\users\d813597\documents\tcom-aem-multi\tcom-aem-frontend
}

function cddocs {
  set-location d:\users\d813597\documents
}

function cdadobe {
  Set-Location C:\adobe
}

function buildmulti {
  mvn -PautoInstallPackage clean install -Dcrx.username=admin -Dcrx.password=admin
}

function find ($filename){
  gci -recurse -include $filename | Resolve-Path -Relative
}

function grep ($searchString){
  gci -recurse | Select-String $searchString
}