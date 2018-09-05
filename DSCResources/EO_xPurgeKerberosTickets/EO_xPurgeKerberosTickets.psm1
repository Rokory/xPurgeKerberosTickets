function Get-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    param
    (
        [ValidateNotNullorEmpty()]
        [Parameter(Mandatory = $true)]
        [String]
        $Key
    )

    # Remove domain parameter if not specified

    return @{
    }
}

function Set-TargetResource
{
    [CmdletBinding()]
    param
    (
        [ValidateNotNullorEmpty()]
        [Parameter(Mandatory = $true)]
        [String]
        $Key,

        [ValidateSet("Computer", "User")]
        [System.String]
        $Target = 'Computer'
    )

    if ($Target -eq 'Computer') {
        Write-Verbose 'Calling klist.exe -li 0x3e7 purge'
        "$env:windir\System32\klist.exe -li 0x3e7 purge"
    }

    if ($Target -eq 'User') {
        Write-Verbose 'Calling klist.exe purge'
        "$env:windir\System32\klist.exe purge"
    }
}

function Test-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Boolean])]
    param
    (
        [ValidateNotNullorEmpty()]
        [Parameter(Mandatory = $true)]
        [String]
        $Key,
        
        [ValidateSet("Computer", "User")]
        [System.String]
        $Target = 'Computer'
    )

    return $false
}

Export-ModuleMember -Function *-TargetResource

