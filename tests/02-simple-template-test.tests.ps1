$TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

$template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json

Write-Host $template.resources.Count

Describe 'Sample Pester Test of an ARM Template' {
    It 'Has a total of 2 objects in the resources array' {
        $template.resources.Count | Should -Be 2
    }
}