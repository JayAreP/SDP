function Get-K2RFHostIqns { 
    $endpoint = "host_iqns"

    if ($PSBoundParameters.Keys.Contains('Verbose')) {
        $results = Invoke-K2RFRestCall -endpoint $endpoint -method GET -parameterList $PSBoundParameters -Verbose -k2context $k2context
    } else {
        $results = Invoke-K2RFRestCall -endpoint $endpoint -method GET -parameterList $PSBoundParameters -k2context $k2context
    }
    return $results.hits
}