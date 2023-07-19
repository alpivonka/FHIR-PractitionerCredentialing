Extension: LegalAction
Id: legal-action
Title: "Extension : Practitioner Work History"
Description: "extension to show work history"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* extension contains
   malpracticeClaim 0..* and 
   saction 0..*
* extension[malpracticeClaim] ^short = "Malpractice Claim"
* extension[malpracticeClaim].value[x] only Reference(Claim)
* extension[saction] ^short = "Restriction Sanction"
* extension[saction].value[x] only Reference(Consent)


Profile: DQPSVPractitionerLegalAction
Parent: Practitioner
Id: DQ-PSV-Practitioner-Legal-Action
Title: "Data Quality and Primary Source Verfication Practitioner"
* extension contains LegalAction named legalAction 0..1

Instance: MockedCliamPatient
InstanceOf: Patient
Usage: #example
* identifier.use = #offical
* identifier.value = "8bd279af-125a-4318-b461-7ADYA78T7890"

Instance: MockMalpracticeProviderOrganization
InstanceOf: Organization
Usage: #example
* identifier.use = #offical
* identifier.value = "8bd279af-125a-4318-b461-7ADYA78TA90"

Instance: InsuranceCoverage
InstanceOf: Coverage
Usage: #example
* identifier.use = #offical
* identifier.type = #insurancecoverage
* identifier.value = "8bd279af-125a-4318-b461-7ADYA78TA7T"
* status = #active
* payor = Reference(MalpracticeProviderOrganization)
* beneficiary = Reference(MockedCliamPatient)

Instance: MalpracticeClaim1
InstanceOf: Claim
Usage: #example
* identifier.use = #offical
* identifier.type = #malpractice
* identifier.value = "8bd279af-125a-4318-b461-SD7A607607W"
* status = #active
* type = #malpractice
* patient = Reference(StubbedCliamPatient)
* use = #claim
* priority = #normal
* created = "2000-12-19"
* provider = Reference(MalpracticeProviderOrganization)
* insurance.sequence = 1
* insurance.focal = false
* insurance.coverage = Reference(InsuranceCoverage)


Instance: Sanction-vhdir-restriction
InstanceOf: Consent
Usage: #example
* identifier.use = #offical
* identifier.type = #sanction
* identifier.value = "8bd279af-125a-4318-b461-PSOD8YFAYTS"
* status = #active
* scope = #malpractice
* category = #malpractice

Instance: thePractitioner
InstanceOf: DQPSVPractitionerLegalAction
Usage: #example
* identifier[+].use = #offical
* identifier[=].id = "8bd279af-125a-4318-b461-sda0867067s"
* name.family = "Doe"
* name.given = "John"
* name.prefix = "DO"
* extension[legalAction].extension[malpracticeClaim].valueReference = Reference(MalpracticeClaim1)
* extension[legalAction].extension[saction].valueReference = Reference(Sanction-vhdir-restriction)



//WorkHISTORY

Instance: Employer0
InstanceOf: Organization
Usage: #example
* identifier[+].use = #offical
* identifier[=].id = "73e9266d-aadf-4c7f-9d3c-731c913e6d2b"
* name = "Hospital employer"



Instance: Employer1
InstanceOf: Organization
Usage: #example
* identifier[+].use = #offical
* identifier[=].id = "7f1dd829-db66-4312-a6a2-46283ad29f27"
* name = "Hospital employer"


Instance: Employer2
InstanceOf: Organization
Usage: #example
* identifier[+].use = #offical
* identifier[=].id = "4efcf928-2b65-4c9a-b9d7-8a4ee22b5625"
* name = "Hospital employer"


Instance: WorkHistory0
InstanceOf: PractitionerRole
Usage: #example
* identifier.id = "3a9730f6-b0ff-470b-919b-e555057c5c5c"
* identifier.use = #official
* practitioner = Reference(thePractitioner)
* organization = Reference(Employer0)
* period.start = "1990-01-01"
* period.end = "2000-12-19"
* code = #doctor


Instance: WorkHistory1
InstanceOf: PractitionerRole
Usage: #example
* identifier.id = "13314c80-b5cf-4606-bc6a-07d849433e7a"
* identifier.use = #official
* practitioner = Reference(thePractitioner)
* organization = Reference(Employer1)
* period.start = "2001-01-01"
* period.end = "2010-12-23"
* code = #17561000

Instance: WorkHistory2
InstanceOf: PractitionerRole
Usage: #example
* identifier.id = "62536813-4dad-48ce-aac2-5b88abdaa913"
* identifier.use = #official
* practitioner = Reference(thePractitioner)
* organization = Reference(Employer1)
* period.start = "2010-01-01"
* code = #24590004


//Resource Bundle



Instance: DQPSVPractitionerLegalActionResourceBundle
InstanceOf: Bundle
Usage: #example
* identifier.system = "http://example.org"
* identifier.value = "ba91c64b-f30c-4137-a484-34bbba5e8804"
* type = #document
* timestamp = "2023-03-09T14:30:00+01:00"
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-sda0867067s"
* entry[=].resource = thePractitioner
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-PSOD8YFAYTS"
* entry[=].resource = Sanction-vhdir-restriction
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-SD7A607607W"
* entry[=].resource = MalpracticeClaim1
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-7ADYA78TA7T"
* entry[=].resource = InsuranceCoverage
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f"
* entry[=].resource = MockMalpracticeProviderOrganization
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-SD6AA765A657"
* entry[=].resource = MockedCliamPatient
//employer
* entry[+].fullUrl = "urn:uuid:73e9266d-aadf-4c7f-9d3c-731c913e6d2b"
* entry[=].resource = Employer0
* entry[+].fullUrl = "urn:uuid:7f1dd829-db66-4312-a6a2-46283ad29f27"
* entry[=].resource = Employer1
* entry[+].fullUrl = "urn:uuid:4efcf928-2b65-4c9a-b9d7-8a4ee22b5625"
* entry[=].resource = Employer2
//work history
* entry[+].fullUrl = "urn:uuid:3a9730f6-b0ff-470b-919b-e555057c5c5c"
* entry[=].resource = WorkHistory0
* entry[+].fullUrl = "urn:uuid:13314c80-b5cf-4606-bc6a-07d849433e7a"
* entry[=].resource = WorkHistory1
* entry[+].fullUrl = "urn:uuid:62536813-4dad-48ce-aac2-5b88abdaa913"
* entry[=].resource = WorkHistory2
