$TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')
Write-Host $TemplateFileName
$content = Get-Content -Path $TemplateFileName
Write-Host $content
$template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
Write-Host $template
Write-Host $template.resources.Count

Describe 'Sample Pester Test of an ARM Template' {
    It 'Has a resource title of Microsoft.Network/virtualNetworks' {
        $template.resources.Count | Should -Be 5
    }
}