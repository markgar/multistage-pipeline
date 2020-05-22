Param(
    [string] $TemplateFilePath
)

$json = Get-Content -Path $TemplateFilePath
$template = ConvertFrom-Json $json

Write-Host $template

Describe 'Basic Pester Tests' {
    It 'A test that should be true' {
        $true | Should -Be $true
    }
}