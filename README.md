### to do:
* Add function to choose relationship: parent, relative, aide, doctor, guardian, child, other, unknownFutureValue
* Add GUI with function to update the related contact values of one user

### Working with:
 * 1.19.0               Microsoft.Graph

### Some extra information:
* https://learn.microsoft.com/en-us/graph/api/relatedcontact-update?view=graph-rest-beta&tabs=http
* https://learn.microsoft.com/en-us/graph/api/resources/relatedcontact?view=graph-rest-1.0
* https://learn.microsoft.com/en-us/powershell/microsoftgraph/get-started?view=graph-powershell-1.0





### edu_parents.ps1

This script updates the "related contacts" based on the information from a csv-file (data.csv). 
Default value for relationship = "parent" - choosing another relationship value is currently WIP

### data.csv
UPN,rc1name,rc1phone,rc1mail,rc2name,rc2phone,rc2mail
7  headers: UPN,rc1name,rc1phone,rc1mail,rc2name,rc2phone,rc2mail

* UPN = UPN of user
* rc1name = Display name for related contact 1
* rc1phone = Phone number for related contact 1
* rc1mail = mail for related contact 1
* rc2name = Display name for related contact 2
* rc2phone = Phone number for related contact 2
* rc2mail = mail for related contact 2
