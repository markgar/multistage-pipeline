Param(
    [string] $TemplateFilePath
)

$json = Get-Content -Path $TemplateFilePath

Describe 'Basic Pester Tests' {
    It 'A test that should be true' {
        $true | Should -Be $true
    }
}