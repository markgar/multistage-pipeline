Param(
    [string] [Parameter(Mandatory = $true)] $TemplateFile
)

$json = Get-Content -Path $TemplateFile
$template = ConvertFrom-Json $json

Write-Host $template

Describe 'Basic Pester Tests' {
    It 'A test that should be true' {
        $true | Should -Be $true
    }
}