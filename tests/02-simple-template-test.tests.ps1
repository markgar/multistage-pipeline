$TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

$template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json

Write-Host "1: " + $template.resources.Count

Describe 'Sample Pester Test of an ARM Template' {
    Write-Host "2: " + $template.resources.Count
    $count = $template.resource.Count
    Write-Host "3: " + $count
    It 'Has a total of 2 objects in the resources array' {
        Write-Host "4: " + $template.resources.Count
        Write-Host "5: " + $count
        $template.resources.Count | Should -Be 2
    }
}