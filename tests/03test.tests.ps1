# BeforeAll {
#     $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

#     $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
# }


Describe 'Virtual Network Tests' {
    $TemplateFileName = [System.Environment]::GetEnvironmentVariable('TemplateFileName')

    $template = Get-Content -Path $TemplateFileName | Out-String | ConvertFrom-Json
    Write-Host $template
    $virtualNetworkObjects = $template.resources | Where-Object { $_.type -in "Microsoft.Network/virtualNetworks" }
    Write-Host $virtualNetworkObjects

    $testCases = $virtualNetworkObject | Select-Object -Property type
    Write-Host $testCases

    It 'Has a resource type of Microsoft.Network/virtualNetworks'  -TestCases $virtualNetworkObjects {
        param ($resource)
    
        $resorce.type | Should -Be 'Microsoft.Network/virtualNetworks'
    }

}


