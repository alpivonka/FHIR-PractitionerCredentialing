//Profiles
Profile: DQPSVPractitionerLegalAction
Parent: Practitioner
Id: DQ-PSV-Practitioner-Legal-Action
Title: "Data Quality and Primary Source Verfication Practitioner"
* extension contains LegalAction named legalAction 0..1
* extension contains MalpracticeCoverage named malpracticeCoverage 0..1
* extension contains PrimarySource named primarySource 0..1

Profile: DQPSVMalpracticeCliam
Parent: Claim
Id: DQ-PSV-malpractice-claim
* extension contains PrimarySource named primarySource 0..1

Profile: DQPSVMalpracticeCoverage
Parent: Coverage
Id: DQ-PSV-malpractice-coverage
* extension contains PrimarySource named primarySource 0..1

Profile: DQPSVSanction
Parent: Consent
Id: DQ-PSV-santion
* extension contains PrimarySource named primarySource 0..1

Profile: DQPSVWorkHistory
Parent: PractitionerRole
* extension contains PrimarySource named primarySource 0..1


//Extensions
Extension: MalpracticeCoverage
Id:        malpractice-coverage
Title:     "Extension: proof of malpractice insurance coverage"
Description: "Extension: proof of malpractice insurance coverage"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* value[x] only Reference(Coverage)

Extension: LegalAction
Id: legal-action
Title: "Extension : Practitioner Legal Actions"
Description: "Extension : Practitioner Legal Actions"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* extension contains
   action 0..*
* extension[action] ^short = "The legal Action Reference Claim or Consent"
* extension[action].value[x] only Reference(Claim or Consent)

Extension: PrimarySource
Id: primary-source
Title: "Extension : Primary Source Verification Information"
Description: "Primary Source Verification Information"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[=].expression = "Coverage"
* ^context[=].expression = "Claim"
* ^context[=].expression = "Consent"
* ^context[=].expression = "PractitionerRole"
* extension contains
   verificationURL 0..1 and 
   lastPublished 1..1 and
   who 0..1
* extension[verificationURL] ^short = "url"
* extension[verificationURL].value[x] only string
* extension[lastPublished] ^short = "lastpublished"
* extension[lastPublished].value[x] only dateTime
* extension[who] ^short = "lastpublished"
* extension[who].value[x] only Reference(Organization)

//Examples
//MOCK DATA
Instance: MockedCliamPatient
InstanceOf: Patient
Usage: #example
* id = "MockedCliamPatient-8bd279af-125a-4318-b461-7ADYA78T7890"
* identifier.use = #offical
* identifier.value = "8bd279af-125a-4318-b461-7ADYA78T7890"

Instance: MockMalpracticeProviderOrganization
InstanceOf: Organization
Usage: #example
* id = "MockMalpracticeOrganization-8bd279af-125a-4318-b461-7ADYA78TA90"
* identifier.use = #offical
* identifier.value = "8bd279af-125a-4318-b461-7ADYA78TA90"

Instance: PrimarySourceOrganization
InstanceOf: Organization
Usage: #example
* id = "PrimarySourceOrganization-f8881e4c-272a-11ee-be56-0242ac120002"
* name = "PrimarySource Organization"
* identifier.use = #offical
* identifier.value = "f8881e4c-272a-11ee-be56-0242ac120002"

//Examples
Instance: MalpracticeInsuranceCoverage
InstanceOf: DQPSVMalpracticeCoverage
Usage: #example
* id = "MalpracticeInsuranceCoverage-8bd279af-125a-4318-b461-7ADYA78TA7T"
* identifier.use = #offical
* identifier.type = #malpracticeinsurancecoverage
* identifier.value = "8bd279af-125a-4318-b461-7ADYA78TA7T"
* status = #active
* payor = Reference(MalpracticeProviderOrganization)
* beneficiary = Reference(MockedCliamPatient)
* period.start = "1990-01-01"
* period.end = "2025-01-01"
* class[+].type = #malpracticeCoverage
* class[=].name = "Medical Malpractice Insurance Mutual of Omaha"
* class[=].value = "PolicyNumber: 667fd5a95a5"
* extension[primarySource].extension[verificationURL].valueString = "http://example.url.com/Malpractice/coverage"
* extension[primarySource].extension[lastPublished].valueDateTime = "2023-01-01"
* extension[primarySource].extension[who].valueReference = Reference(PrimarySourceOrganization)

Instance: MalpracticeClaim1
InstanceOf: DQPSVMalpracticeCliam
Usage: #example
* id = "MalpracticeClaim1-8bd279af-125a-4318-b461-SD7A607607W"
* identifier.use = #offical
* identifier.type = #malpractice
* identifier.value = "8bd279af-125a-4318-b461-SD7A607607W"
* status = #active
* type = #malpractice
* patient = Reference(MockedCliamPatient)
* use = #claim
* priority = #normal
* created = "2000-12-19"
* provider = Reference(MockMalpracticeProviderOrganization)
* insurance.sequence = 1
* insurance.focal = false
* insurance.coverage = Reference(MalpracticeInsuranceCoverage)
* extension[primarySource].extension[verificationURL].valueString = "http://example.url.com/Malpractice/claims"
* extension[primarySource].extension[lastPublished].valueDateTime = "2023-01-01"
* extension[primarySource].extension[who].valueReference = Reference(PrimarySourceOrganization)


Instance: Sanction-vhdir-restriction
InstanceOf: DQPSVSanction
Usage: #example
* id = "Sanction-vhdir-restriction-8bd279af-125a-4318-b461-PSOD8YFAYTS"
* identifier.use = #offical
* identifier.type = #sanction
* identifier.value = "8bd279af-125a-4318-b461-PSOD8YFAYTS"
* status = #active
* scope = #sanction
* category = #saction
* extension[primarySource].extension[verificationURL].valueString = "http://example.url.com/sanctions"
* extension[primarySource].extension[lastPublished].valueDateTime = "2023-01-01"
* extension[primarySource].extension[who].valueReference = Reference(PrimarySourceOrganization)
* provision.type = #deny
* provision.action = #morningRounds
* provision.actor[+].reference = Reference(thePractitioner)
* provision.actor[=].role = #doctor


Instance: QulificationDEAOrganization
InstanceOf: Organization
Usage: #example
* id = "QulificationDEAOrganization-fb34e0b9-c8d6-4f51-8ed3-9d6f3fbebd21"
* identifier.use = #offical
* identifier.value = "fb34e0b9-c8d6-4f51-8ed3-9d6f3fbebd21"
* name = "DEA"

Instance: QulificationDCSOrganization
InstanceOf: Organization
Usage: #example
* id = "QulificationDCSOrganization-25560a5d-1c71-4af2-86a6-46acb9daa102"
* identifier.use = #offical
* identifier.value = "25560a5d-1c71-4af2-86a6-46acb9daa102"
* name = "DCS-Florida"


Instance: QulificationTrainingOrganization
InstanceOf: Organization
Usage: #example
* id = "QTrainingOrganization-c418c853-bf5e-47e1-8889-fb76d3997e7e"
* identifier.use = #offical
* identifier.value = "c418c853-bf5e-47e1-8889-fb76d3997e7e"
* name = "We-Train-Docs"


Instance: thePractitioner
InstanceOf: DQPSVPractitionerLegalAction
Usage: #example
* id = "thePractitioner-8bd279af-125a-4318-b461-sda0867067s"
* identifier[+].use = #offical
* identifier[=].id = "8bd279af-125a-4318-b461-sda0867067s"
* name.family = "Doe"
* name.given = "John"
* name.prefix = "DO"
//Legal Actions
* extension[legalAction].extension[action][+].valueReference = Reference(MalpracticeClaim1)
* extension[legalAction].extension[action][+].valueReference = Reference(Sanction-vhdir-restriction)
//Malpractice Insurance Coverage
* extension[malpracticeCoverage].valueReference = Reference(MalpracticeInsuranceCoverage)
//Primary Source
* extension[primarySource].extension[verificationURL].valueString = "http://example.url.com/practitioner"
* extension[primarySource].extension[lastPublished].valueDateTime = "2023-01-01"
* extension[primarySource].extension[who].valueReference = Reference(PrimarySourceOrganization)

//DEA Qualification
* qualification[+].identifier.id = "f755ea67-6c33-4dc2-9a1d-6b480d9e558c"
* qualification[=].identifier.value = "DEA-NUMBER:8s997867585"
* qualification[=].code = #DEACertification
* qualification[=].period.start = "2023-01-01"
* qualification[=].period.end = "2025-01-01"
* qualification[=].issuer = Reference(QulificationDEAOrganization)
//DCS Qualification
* qualification[+].identifier.id = "af173c79-48dd-4edf-88e5-6062993477f0"
* qualification[=].identifier.value = "DCS-NUMBER:sd098-a7a686"
* qualification[=].code = #DCSCertification
* qualification[=].period.start = "2023-01-01"
* qualification[=].period.end = "2030-01-01"
* qualification[=].issuer = Reference(QulificationDCSOrganization)
//Training
* qualification[+].identifier.id = "0815108c-8b80-49b4-b4ee-cb42f1f2448e"
* qualification[=].identifier.value = "CPR-Training For Doctors 2020"
* qualification[=].code = #CPRTraining
* qualification[=].period.start = "2020-01-01"
* qualification[=].period.end = "2050-01-01"
* qualification[=].issuer = Reference(QulificationTrainingOrganization)


//Work History using HISTORY
Instance: Employer0
InstanceOf: Organization
Usage: #example
* id = "Employer0-73e9266d-aadf-4c7f-9d3c-731c913e6d2b"
* identifier[+].use = #offical
* identifier[=].id = "73e9266d-aadf-4c7f-9d3c-731c913e6d2b"
* name = "Hospital employer"



Instance: Employer1
InstanceOf: Organization
Usage: #example
* id = "Employer1-7f1dd829-db66-4312-a6a2-46283ad29f27"
* identifier[+].use = #offical
* identifier[=].id = "7f1dd829-db66-4312-a6a2-46283ad29f27"
* name = "Hospital employer"


Instance: Employer2
InstanceOf: Organization
Usage: #example
* id = "Employer2-4efcf928-2b65-4c9a-b9d7-8a4ee22b5625"
* identifier[+].use = #offical
* identifier[=].id = "4efcf928-2b65-4c9a-b9d7-8a4ee22b5625"
* name = "Hospital employer"


Instance: WorkHistory0
InstanceOf: DQPSVWorkHistory
Usage: #example
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



//Resource Bundle
Instance: DQPSVPractitionerLegalActionResourceBundle
InstanceOf: Bundle
Usage: #example
* id = "ResourceBundle-ba91c64b-f30c-4137-a484-34bbba5e8804"
* identifier.system = "http://example.org"
* identifier.value = "ba91c64b-f30c-4137-a484-34bbba5e8804"
* type = #document
* timestamp = "2023-03-09T14:30:00+01:00"
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-sda0867067s"
* entry[=].resource = thePractitioner
//DEA Organization
* entry[+].fullUrl = "urn:uuid:fb34e0b9-c8d6-4f51-8ed3-9d6f3fbebd21"
* entry[=].resource = QulificationDEAOrganization
//DCS Qualification
* entry[+].fullUrl = "urn:uuid:25560a5d-1c71-4af2-86a6-46acb9daa102"
* entry[=].resource = QulificationDCSOrganization
//Training Qualification
* entry[+].fullUrl = "urn:uuid:c418c853-bf5e-47e1-8889-fb76d3997e7e"
* entry[=].resource = QulificationTrainingOrganization
//PrimarySourceOrganization
* entry[+].fullUrl = "urn:uuid:f8881e4c-272a-11ee-be56-0242ac120002"
* entry[=].resource = PrimarySourceOrganization

//Legal Actions
//Sanction
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-PSOD8YFAYTS"
* entry[=].resource = Sanction-vhdir-restriction
// Malpractice claim
* entry[+].fullUrl = "urn:uuid:MalpracticeClaim1-8bd279af-125a-4318-b461-SD7A607607W"
* entry[=].resource = MalpracticeClaim1
//Malpractice Coverage
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-7ADYA78TA7T"
* entry[=].resource = MalpracticeInsuranceCoverage
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
