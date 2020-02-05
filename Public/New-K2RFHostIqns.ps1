function New-K2RFHostIqns {
    param(
        [parameter()]
        [string] $k2context = 'k2rfconnection'
    )

    $PSBoundParameters.remove('Verbose')
    $PSBoundParameters.remove('k2context')

    $body = $PSBoundParameters

    $endpoint = "host_iqns"

    if ($PSBoundParameters.Keys.Contains('Verbose')) {
        $results = Invoke-K2RFRestCall -endpoint $endpoint -method POST -parameterList $PSBoundParameters -body $body -Verbose -k2context $k2context
    } else {
        $results = Invoke-K2RFRestCall -endpoint $endpoint -method POST -parameterList $PSBoundParameters -body $body -k2context $k2context -body $body
    }
    return $results.hits
}