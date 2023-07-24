//Work History using HISTORY
Instance: Employer0
InstanceOf: Organization
Usage: #example
Description: "Examaple : Work History Organization"
* id = "Employer0-73e9266d-aadf-4c7f-9d3c-731c913e6d2b"
* identifier[+].use = #official
* identifier[=].id = "73e9266d-aadf-4c7f-9d3c-731c913e6d2b"
* name = "Hospital employer"



Instance: Employer1
InstanceOf: Organization
Usage: #example
Description: "Examaple : Work History Organization"
* id = "Employer1-7f1dd829-db66-4312-a6a2-46283ad29f27"
* identifier[+].use = #official
* identifier[=].id = "7f1dd829-db66-4312-a6a2-46283ad29f27"
* name = "Hospital employer"


Instance: Employer2
InstanceOf: Organization
Usage: #example
Description: "Examaple : Work History Organization"
* id = "Employer2-4efcf928-2b65-4c9a-b9d7-8a4ee22b5625"
* identifier[+].use = #official
* identifier[=].id = "4efcf928-2b65-4c9a-b9d7-8a4ee22b5625"
* name = "Hospital employer"


Instance: WorkHistory0
InstanceOf: DQPSVWorkHistory
Usage: #example
Description: "Examaple : Work History PractitionerRole"
* id = "WorkHistory0-3a9730f6-b0ff-470b-919b-e555057c5c5c"
* identifier.id = "3a9730f6-b0ff-470b-919b-e555057c5c5c"
* identifier.use = #official
* practitioner = Reference(thePractitioner)
* organization = Reference(Employer0)
* period.start = "1990-01-01"
* period.end = "2000-12-19"
* code = #doctor
* extension[primarySource].extension[verificationURL].valueString = "http://example.url.com/workhistory"
* extension[primarySource].extension[lastPublished].valueDateTime = "2023-01-01"
* extension[primarySource].extension[who].valueReference = Reference(PrimarySourceOrganization)



Instance: WorkHistory1
InstanceOf: DQPSVWorkHistory
Usage: #example
Description: "Examaple : Work History PractitionerRole"
* id = "WorkHistory1-13314c80-b5cf-4606-bc6a-07d849433e7a"
* identifier.id = "13314c80-b5cf-4606-bc6a-07d849433e7a"
* identifier.use = #official
* practitioner = Reference(thePractitioner)
* organization = Reference(Employer1)
* period.start = "2001-01-01"
* period.end = "2010-12-23"
* code = #17561000
* extension[primarySource].extension[verificationURL].valueString = "http://example.url.com/workhistory"
* extension[primarySource].extension[lastPublished].valueDateTime = "2023-01-01"
* extension[primarySource].extension[who].valueReference = Reference(PrimarySourceOrganization)


Instance: WorkHistory2
InstanceOf: DQPSVWorkHistory
Description: "Examaple : Work History PractitionerRole"
Usage: #example
* id = "WorkHistory-62536813-4dad-48ce-aac2-5b88abdaa913"
* identifier.id = "62536813-4dad-48ce-aac2-5b88abdaa913"
* identifier.use = #official
* practitioner = Reference(thePractitioner)
* organization = Reference(Employer1)
* period.start = "2010-01-01"
* code = #24590004
* extension[primarySource].extension[verificationURL].valueString = "http://example.url.com/workhistory"
* extension[primarySource].extension[lastPublished].valueDateTime = "2023-01-01"
* extension[primarySource].extension[who].valueReference = Reference(PrimarySourceOrganization)

