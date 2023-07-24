Instance: MalpracticeInsuranceCoverage
InstanceOf: DQPSVMalpracticeCoverage
Usage: #example
Description: "Example: Malpractice Coverage"
* id = "MalpracticeInsuranceCoverage-8bd279af-125a-4318-b461-7ADYA78TA7T"
* identifier.use = #official
* identifier.type = #malpracticeinsurancecoverage
* identifier.value = "8bd279af-125a-4318-b461-7ADYA78TA7T"
* status = #active
* payor = Reference(MockMalpracticeProviderOrganization)
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
Description: "Example: Malpractice Claim"
* id = "MalpracticeClaim1-8bd279af-125a-4318-b461-SD7A607607W"
* identifier.use = #official
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
//* extension[primarySource].extension[verificationURL].valueString = "http://example.url.com/Malpractice/claims"
//* extension[primarySource].extension[lastPublished].valueDateTime = "2023-01-01"
//* extension[primarySource].extension[who].valueReference = Reference(PrimarySourceOrganization)


Instance: Sanction-vhdir-restriction
InstanceOf: DQPSVSanction
Usage: #example
Description: "Example: Sanction"
* id = "Sanction-vhdir-restriction-8bd279af-125a-4318-b461-PSOD8YFAYTS"
* identifier.use = #official
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