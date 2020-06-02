function Get-SDPHost {
    param(
        [parameter()]
        [Alias("HostGroup")]
        [string] $host_group,
        [parameter()]
        [int] $id,
        [parameter(Position=1)]
        [string] $name,
        [parameter()]
        [string] $type,
        [parameter()]
        [string] $k2context = 'k2rfconnection'
    )
    
    begin {
        $endpoint = "hosts"
    }
    
    process {
        if ($PSBoundParameters.Keys.Contains('Verbose')) {
            $results = Invoke-SDPRestCall -endpoint $endpoint -method GET -parameterList $PSBoundParameters -Verbose -k2context $k2context
        } else {
            $results = Invoke-SDPRestCall -endpoint $endpoint -method GET -parameterList $PSBoundParameters -k2context $k2context
        }
        return $results
    }

}