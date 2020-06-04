# BeforeAll {
#     $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

#     $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
# }


Describe '03-Describe Block' {
    $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')
    Write-Host "1:" + $TemplateFileName

    $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
    Write-Host "2:" + $template

    foreach ($resource in $template.resources)
    {
        Write-Host "3:" + $resource
        It 'Has a resource location of eastus'  -TestCases {resource = $resource} {
            Write-Host "4:" + $resource
            $resource.location | Should -Be 'eastus'
        }
    }
}