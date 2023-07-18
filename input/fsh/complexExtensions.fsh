Extension: PractitionerWorkHistory
Id: practitioner-work-history
Title: "Extension : Practitioner Work History"
Description: "extension to show work history"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* extension contains
   IDENTIFIER 0..1 and 
   ROLE 0..1 and
   PRACTITIONER 1..1 and
   EMPLOYER 0..1 and
   PERIOD 1..1 and
   LASTMODIFIED 1..1
* extension[IDENTIFIER] ^short = "Identifier"
* extension[IDENTIFIER].value[x] only Identifier
* extension[ROLE] ^short = "Role"
* extension[ROLE].value[x] only string
* extension[PRACTITIONER] ^short = "Period of employment"
* extension[PRACTITIONER].value[x] only Reference(Practitioner)
* extension[EMPLOYER] ^short = "Working Employer"
* extension[EMPLOYER].value[x] only Reference(Organization)
* extension[PERIOD] ^short = "Period of employment"
* extension[PERIOD].value[x] only Period
* extension[LASTMODIFIED] ^short = "Period of employment"
* extension[LASTMODIFIED].value[x] only Period
