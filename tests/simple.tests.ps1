Param(
    [string] $TemplateFilePath
)

$template = Get-Content -Path $TemplateFilePath | Out-String | ConvertFrom-Json

Write-Host $template.resources[0].type


Describe 'Basic Pester Tests' {
    It 'A test that should be true' {
        $true | Should -Be $true
    }
}