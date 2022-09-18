TODO:

één script van maken = ID ophalen + related contact updaten
termen "moeder" en "vader" uit script halen en werken met parent, relative, aide, doctor, guardian, child, other, unknownFutureValue
Zie: https://learn.microsoft.com/en-us/graph/api/relatedcontact-update?view=graph-rest-beta&tabs=http
Zie: https://learn.microsoft.com/en-us/graph/api/resources/relatedcontact?view=graph-rest-1.0
Connectie met Graph: zie: https://learn.microsoft.com/en-us/powershell/microsoftgraph/get-started?view=graph-powershell-1.0

edu_ouders.ps1

Door het uitvoeren van dit script worden kan je de "related contact" van edu users updaten op basis van een .csv-bestand (data.csv)
data.csv

8 headers: UPN,ID,moedernaam,gsmmoeder,moedermail,vadernaam,gsmvader,vadermail

UPN = de UPN van de edu user (leerling)
ID = ID van de edu user (zie script get_id.ps1)
moedernaam = naam van de moeder
gsmmoeder = telefoon van de moeder
moedermail = e-mail van de moeder
vadernaam = naam van de vader
gsmvader = telefoon van de vader
vadermail = e-mail van de vader
get_id.ps1

Door het uitvoeren van dit script kan je de ID's opvragen van edu users op basis van een .csv (upn.csv)
upn.csv

1 header: UPN

UPN = User Principal Name van de edu user (leerling)
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
