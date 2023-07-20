$myName = ($MyInvocation.MyCommand.ScriptBlock.File | Split-Path -Leaf) -replace '\.source', '' -replace '\.ps1', '.txt'
$myRoot = $MyInvocation.MyCommand.ScriptBlock.File | Split-Path

New-RegEx -Description "Matches a PowerShell Hashtable" -Comment "Starts with at sign" -LiteralCharacter '@' |
    New-regex -Pattern '?<BalancedCurlyBracket>' |
    Set-Content -Path (Join-Path $myRoot $myName) -Encoding UTF8 -PassThru

