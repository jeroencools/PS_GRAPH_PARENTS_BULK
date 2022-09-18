<# 
Werkende met:
1.11.1               Microsoft.Graph.Education  

Voor connectie met MgGraph: https://learn.microsoft.com/en-us/powershell/microsoftgraph/get-started?view=graph-powershell-1.0 
#>


Connect-MgGraph `
    -ClientId "ZELF INVULLEN"
    -TenantId "ZELF INVULLEN"
    -CertificateThumbprint "ZELF INVULLEN"

Import-Module Microsoft.Graph.Education

$csv = Import-Csv "ZELF INVULLEN"

foreach($i in $csv)
{
        $upncsv = $i.UPN
        $idcsv = $i.ID
        $moedernaamcsv = $i.moedernaam
        $gsmmoedercsv = $i.gsmmoeder
        $moedermailcsv = $i.moedermail
        $vadernaamcsv = $i.vadernaam
        $gsmvadercsv = $i.gsmvader
        $vadermailcsv = $i.vadermail

        $relatedcontacts = @{
	    RelatedContacts = @(
		    @{
			DisplayName = $moedernaamcsv
			EmailAddress = $moedermailcsv
			MobilePhone = $gsmmoedercsv
			Relationship = "parent"
			AccessConsent = $true
		    }
	        @{
			DisplayName = $vadernaamcsv
			EmailAddress = $vadermailcsv
			MobilePhone = $gsmvadercsv
			Relationship = "parent"
			AccessConsent = $true
		    }
	        )
}

Update-MgEducationUser -EducationUserId $idcsv -BodyParameter $relatedcontacts

}

Write-Output "klaar"
