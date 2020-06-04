# BeforeAll {
#     $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

#     $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
# }


Describe '03-Describe Block' {
    $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

    $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json

    foreach ($resource in $template.resources)
    {
        It 'Has a resource location of eastus' {
            $resource.location | Should -Be 'eastus'
        }
    }
}