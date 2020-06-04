BeforeAll {
    $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

    $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
}


Describe '03-Describe Block' {
    $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')
    Write-Host "1:" + $TemplateFileName

    $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
    Write-Host "2:" + $template

    for ($i=0; $i -lt $template.resources.count; i++)
    {
        Write-Host "3:" + $resource
        It 'Has a resource location of eastus' {
            Write-Host "4:" + $resource
            Write-Host "5: " + $template
            $template.resources[$i].location | Should -Be 'eastus'
        }
    }
}