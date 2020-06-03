$TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')
Write-Host $TemplateFileName
$content = Get-Content -Path $TemplateFileName
Write-Host $content
$template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json


Describe 'Sample Pester Test of an ARM Template' {
    It 'Has a resource title of Microsoft.Network/virtualNetworks' {
        $template.resources[0].type | Should -Be 'Microsoft.Network/virtualNetworks'
    }
}