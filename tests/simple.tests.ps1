Param(
    [string] $TemplateFilePath
)

$json = Get-Content -Path $TemplateFilePath
$template = Out-String $json | ConvertFrom-Json


Describe 'Basic Pester Tests' {
    It 'A test that should be true' {
        $true | Should -Be $true
    }
}