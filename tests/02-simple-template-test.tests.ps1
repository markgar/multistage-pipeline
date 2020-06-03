# Param(
#     [string] $TemplatePath
# )
$TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')
Write-Host $TemplateFileName
$template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json


Describe 'Sample Pester Test of an ARM Template' {
    It 'Has a resource title of Microsoft.Network/virtualNetworks' {
        $template.resources[0].type | Should -Be 'Microsoft.Network/virtualNetworks'
    }
}