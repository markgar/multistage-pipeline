Write-Host "Test: " + $Env.TestVariable
Describe 'Another Pester Test' {
    It 'A test that should also be true' {
        $true | Should -Be $true
    }
}