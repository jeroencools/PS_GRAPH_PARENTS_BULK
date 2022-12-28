Connect-MgGraph `
    -ClientId "REPLACE WITH ID" `
    -TenantId "REPLACE WITH ID" `
    -CertificateThumbprint "REPLACE WITH THUMPRINT"



Import-Module Microsoft.Graph.Education
$csv = Import-Csv "$PSScriptRoot\data.csv"


foreach($i in $csv)
{
      

        $upncsv = $i.UPN
        $user = Get-MgEducationUser -Filter "userPrincipalName eq '$upncsv'" 
        $idcsv = $user.Id

        $rc1namecsv = $i.rc1name
        $rc1phonecsv = $i.rc1phone
        $rc1mailcsv = $i.rc1mail
        $rc2namecsv = $i.rc2name
        $rc2phonecsv = $i.rc2phone
        $rc2mailcsv = $i.rc2mail

        $relatedcontacts = @{
	        RelatedContacts = @(
		        @{
			    DisplayName = $rc1namecsv
			    EmailAddress = $rc1mailcsv
			    MobilePhone = $rc1phonecsv
			    Relationship = "parent"
			    AccessConsent = $true
		        }
	            @{
			    DisplayName = $rc2namecsv
			    EmailAddress = $rc2mailcsv
			    MobilePhone = $rc2phonecsv
			    Relationship = "parent"
			    AccessConsent = $true
		        }
	            )
}

Update-MgEducationUser -EducationUserId $idcsv -BodyParameter $relatedcontacts

}

Write-Output "done!"
