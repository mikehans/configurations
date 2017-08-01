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
    write-host $pwd -foregroundcolor darkcyan -NoNewLine

}

# [ScriptBlock]$PostPrompt = {

# }

## <Continue to add your own>

set-alias repeat invoke-history

