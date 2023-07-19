Extension: WorkHistory
Id: work-history
Title: "Extension : Practitioner Work History"
Description: "extension to show work history"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* extension contains
   identifier 0..1 and 
   role 1..1 and
   practitioner 0..1 and
   employer 0..1 and
   employmentPeriod 0..1 and
   lastModified 0..1
* extension[identifier] ^short = "Identifier"
* extension[identifier].value[x] only Identifier
* extension[role] ^short = "Role"
* extension[role].value[x] only string
* extension[practitioner] ^short = "Period of employment"
* extension[practitioner].value[x] only Reference(Practitioner)
* extension[employer] ^short = "Working Employer"
* extension[employer].value[x] only Reference(Organization)
* extension[employmentPeriod] ^short = "Period of employment"
* extension[employmentPeriod].value[x] only Period
* extension[lastModified] ^short = "Period of employment"
* extension[lastModified].value[x] only Period


Profile: DQPSVPractitioner
Parent: Practitioner
Id: DQ-PSV-Practitioner
Title: "Data Quality and Primary Source Verfication Practitioner"
* extension contains WorkHistory named workHistory 0..*


Profile: DQPSVPractitioner2
Parent: Practitioner
Id: DQ-PSV-Practitioner
Title: "Data Quality and Primary Source Verfication Practitioner"
* extension contains WorkHistory named workHistory 0..*


Instance: EmploymentPeriod
InstanceOf: Period
Usage: #inline
* start = "2020-01-23"
* end = "2023-12-19"

Instance: EmploymentHistoryLastModified
InstanceOf: Period
Usage: #inline
* start = "2020-01-23"


Instance: Employer1
InstanceOf: Organization
Usage: #example
* identifier[+].use = #offical
//* identifier[=].type = "#hospital"
* identifier[=].id = "s09df7-a6da78sd60"
* name = "Hospital employer"

Instance: thePractitioner
InstanceOf: Practitioner
Usage: #example
* identifier[+].use = #offical
* identifier[=].id = "s09df7-s98d-a7d86a"
* name.family = "Doe"
* name.given = "John"
* name.prefix = "DO"


Instance: PractitionerRole
InstanceOf: PractitionerRole
Usage: #example
* identifier.id = "0df7a06a08722-098s79s"
* identifier.use = #official
* practitioner = Reference(thePractitioner)
* organization = Reference(Employer1)


    
Instance: WorkHistoryIdentifier
InstanceOf: Identifier
Usage: #inline
* use = #offical
* id = "sd0-8a7a9-s0d7fa-7"
* period = EmploymentHistoryLastModified

Instance: DQPSVPractitionerExample
InstanceOf: DQPSVPractitioner
Usage: #example
Title: "Example: DQPSVPractitioner"
Description: "Example: DQPSVPractitioner"
* extension[workHistory][+].extension[identifier].valueIdentifier = WorkHistoryIdentifier
* extension[workHistory][+].extension[role].valueString = "Doctor of xyz"
* extension[workHistory][=].extension[employmentPeriod].valuePeriod = EmploymentPeriod
* extension[workHistory][=].extension[employer].Reference(Employer1)
* extension[workHistory][=].extension[practitioner].Reference(thePractitioner)
* extension[workHistory][=].extension[lastModified].valuePeriod = EmploymentHistoryLastModified
