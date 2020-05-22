Param(
    [string] [Parameter(Mandatory = $true)] $TemplateFile,
    [hashtable] [Parameter(Mandatory = $true)] $Parameters
)

$json = Get-Content -Path $TemplateFile
$template = ConvertFrom-Json $json

Write-Host $template

Describe 'Basic Pester Tests' {
    It 'A test that should be true' {
        $true | Should -Be $false
    }
}