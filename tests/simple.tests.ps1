Param(
    [string] $TemplateFilePath
)

$template = Get-Content -Path $TemplateFilePath | Out-String | ConvertFrom-Json

Write-Host $template.resources[0].type


Describe 'Sample Pester Test of an ARM Template' {
    It 'Has a resource title of Microsoft.Network/virtualNetworks' {
        $template.resources[0].type | Should -Be 'Microsoft.Network/virtualNetworks'
    }
}