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
