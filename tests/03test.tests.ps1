BeforeAll {
    $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

    $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
}


Describe 'Virtual Network Tests' {

    $virtualNetworkObjects = $template.resources | Where-Object { $_.type -in "Microsoft.Network/virtualNetworks" }


    $testCases = @{ resource = $virtualNetworkObjects }

    It 'Has a resource type of Microsoft.Network/virtualNetworks'  -TestCases $testCases {
        param ($resource)
    
        $resorce.type | Should -Be 'Microsoft.Network/virtualNetworks'
    }

}


