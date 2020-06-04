# BeforeAll {
#     $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

#     $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
#     $testCases = 
# }


Describe '03-Describe Block' {
    $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

    $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json

    foreach ($resource in $template.resources) {
        if ($resource.type -eq 'Microsoft.Network/virtualNetworks') {
            $testCases = @{ location = $resource.location }

            It 'Has a resource location of eastus'  -TestCases $testCases {
                param ($resource)
    
                $resource.location | Should -Not -Be 'blah'
            }
        }
    }
}