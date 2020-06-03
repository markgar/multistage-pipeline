BeforeAll {
    $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

    $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
}


Describe 'Sample Pester Test of an ARM Template' {
    foreach ($resource in $template.resources)
    {
        It 'Has a resource location of eastus' {
            $resource.location | Should -Be 'eastus'
        }
    }
}