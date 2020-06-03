Write-Host $Env:ArmTemplateFileName

Describe 'Another Pester Test' {
    It 'A test that should also be true' {
        $true | Should -Be $true
    }
}