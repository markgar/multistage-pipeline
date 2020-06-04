# BeforeAll {
#     $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

#     $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
#     $testCases = 
# }


Describe '03-Describe Block' {
    $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

    $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json

    # foreach ($resource in $template.resources)
    # {
    #     $testCases =  @{ resource = $resource }

        It 'Has a resource location of eastus'  -TestCases $template.resources {
            param ($resource)

            $resource.location | Should -Not -Be 'blah'
        }
    # }
}