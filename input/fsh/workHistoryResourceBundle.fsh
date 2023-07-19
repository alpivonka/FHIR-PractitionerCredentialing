Instance: thePractitioner
InstanceOf: Practitioner
Usage: #example
* identifier[+].use = #offical
* identifier[=].id = "s09df7-s98d-a7d86a"
* name.family = "Doe"
* name.given = "John"
* name.prefix = "DO"


Instance: Employer0
InstanceOf: Organization
Usage: #example
* identifier[+].use = #offical
* identifier[=].id = "s09df7-a6da78sd60"
* name = "Hospital employer"



Instance: Employer1
InstanceOf: Organization
Usage: #example
* identifier[+].use = #offical
* identifier[=].id = "s09df7-s-d9-a978s7"
* name = "Hospital employer"


Instance: Employer2
InstanceOf: Organization
Usage: #example
* identifier[+].use = #offical
* identifier[=].id = "s09df7--987s-a676"
* name = "Hospital employer"


Instance: WorkHistory0
InstanceOf: PractitionerRole
Usage: #example
* identifier.id = "0df7a06a08722-098s79s"
* identifier.use = #official
* practitioner = Reference(thePractitioner)
* organization = Reference(Employer0)
* period.start = "1990-01-01"
* period.end = "2000-12-19"
* code = #doctor


Instance: WorkHistory1
InstanceOf: PractitionerRole
Usage: #example
* identifier.id = "0df7a06a08722-098s79s"
* identifier.use = #official
* practitioner = Reference(thePractitioner)
* organization = Reference(Employer1)
* period.start = "2001-01-01"
* period.end = "2010-12-23"
* code = #17561000

Instance: WorkHistory2
InstanceOf: PractitionerRole
Usage: #example
* identifier.id = "0df7a06a08722-098s79s"
* identifier.use = #official
* practitioner = Reference(thePractitioner)
* organization = Reference(Employer1)
* period.start = "2010-01-01"
* code = #24590004


Instance: DQPSVPractitionersWorkHistoryResourceBundle
InstanceOf: Bundle
Usage: #example
* identifier.system = "http://example.org"
* identifier.value = "ba91c64b-f30c-4137-a484-34bbba5e8804"
* type = #document
* timestamp = "2023-03-09T14:30:00+01:00"
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-sda0867067s"
* entry[=].resource = thePractitioner
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-PSOD8YFAYTS"
* entry[=].resource = Employer0
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-SD7A607607W"
* entry[=].resource = Employer1
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-7ADYA78TA7T"
* entry[=].resource = Employer2
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f"
* entry[=].resource = WorkHistory0
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-SD6AA765A657"
* entry[=].resource = WorkHistory1
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-SD6AA700A653"
* entry[=].resource = WorkHistory2
