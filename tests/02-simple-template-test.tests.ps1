# Param(
#     [string] $TemplatePath
# )
$templatePath = $Env:ArmTemplateFileName
$template = Get-Content -Path $templatePath | Out-String | ConvertFrom-Json


Describe 'Sample Pester Test of an ARM Template' {
    It 'Has a resource title of Microsoft.Network/virtualNetworks' {
        $template.resources[0].type | Should -Be 'Microsoft.Network/virtualNetworks'
    }
}