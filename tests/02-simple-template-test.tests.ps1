$TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

$template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json

Write-Host $template.resources.Count

Describe 'Sample Pester Test of an ARM Template' {
    Write-Host $template.resources.Count
    $count = $template.resource.Count
    Write-Host $count
    It 'Has a total of 2 objects in the resources array' {
        Write-Host $template.resources.Count
        Write-Host $count
        $template.resources.Count | Should -Be 2
    }
}