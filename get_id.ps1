<# 
Werkende met:
1.11.1               Microsoft.Graph.Education  

Voor connectie met MgGraph: https://learn.microsoft.com/en-us/powershell/microsoftgraph/get-started?view=graph-powershell-1.0 
#>

Import-Module Microsoft.Graph.Education

Connect-MgGraph `
    -ClientId "ZELF INVULLEN"
    -TenantId "ZELF INVULLEN"
    -CertificateThumbprint "ZELF INVULLEN"


$csv = Import-Csv "ZELF INVULLEN"

foreach($i in $csv)
        {
        $upn = $i.upn
        Get-MgEducationUser -Filter "userPrincipalName eq '$upn'" | Export-Csv -Path "ZELF INVULLEN" -Append
        } 

