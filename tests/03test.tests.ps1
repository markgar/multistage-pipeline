# BeforeAll {
#     $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

#     $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
#     $testCases = 
# }


Describe '03-Describe Block' {
    $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

    $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json

    foreach ($resource in $template.resources) {

            $testCases = @{ type = $resource.type }

            It 'Has a resource location of eastus'  -TestCases $testCases {
                param ($type)
    
                $type | Should -Not -Be 'blah'
            }
    }
}