$ModuleFolder = Split-Path $PSCommandPath -Parent

$Functions = Join-Path -Path $ModuleFolder -ChildPath 'functions'

# Write-Information -MessageData "Scripts Path  = $Scripts" -InformationAction Continue
# Write-Information -MessageData "Functions Path  = $Functions" -InformationAction Continue

$Script:ModuleFiles = @(
    $(Join-Path -Path $functions -ChildPath 'Get-Speedtest.ps1')
    $(Join-Path -Path $functions -ChildPath 'Get-ExternalIp.ps1')
)

# Write-Information -MessageData $($ModuleFiles -join ';') -InformationAction Continue

foreach ($f in $ModuleFiles) {
    . $f
}