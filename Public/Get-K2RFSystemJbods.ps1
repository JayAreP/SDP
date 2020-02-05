function Get-K2RFSystemJbods {
    param(
        [parameter()]
        [Alias("ConnectivityState")]
        [string] $connectivity_state,
        [parameter()]
        [Alias("ContainedIn")]
        [string] $contained_in,
        [parameter()]
        [int] $id,
        [parameter()]
        [Alias("IsExpansionInProgress")]
        [bool] $is_expansion_in_progress,
        [parameter()]
        [Alias("IsFru")]
        [bool] $is_fru,
        [parameter()]
        [Alias("IsIdentificationOn")]
        [bool] $is_identification_on,
        [parameter()]
        [Alias("IsPhasedOut")]
        [bool] $is_phased_out,
        [parameter()]
        [string] $name,
        [parameter()]
        [Alias("NduState")]
        [string] $ndu_state,
        [parameter()]
        [string] $k2context = "k2rfconnection"
    )

    $endpoint = "system/jbods"

    if ($PSBoundParameters.Keys.Contains('Verbose')) {
        $results = Invoke-K2RFRestCall -endpoint $endpoint -method GET -parameterList $PSBoundParameters -Verbose -k2context $k2context
    } else {
        $results = Invoke-K2RFRestCall -endpoint $endpoint -method GET -parameterList $PSBoundParameters -k2context $k2context
    }
    return $results.hits
}