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

Profile: StubbedCliamPatient
Parent: Patient
Id: stubbed-cliam-patient

Profile: MalpracticeProviderOrganization
Parent: Organization
Id: malpractice-provider-organization

Profile: InsuranceCoverage
Parent: Coverage

Instance: MalpracticeClaim1
InstanceOf: Claim
Usage: #example
* identifier.use = #offical
* identifier.type = #malpractice
* identifier.value = "87a-86d6a-7d6a0760607"
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
* identifier.value = "87a-86d6a-7d6a0760607"
* status = #active
* scope = #malpractice
* category = #malpractice

Instance: thePractitionerWithLegalActions
InstanceOf: DQPSVPractitionerLegalAction
Usage: #example
* identifier[+].use = #offical
* identifier[=].id = "uuid-2ed95ca8-7934-4915-b904-b1a1d3e05add"
* name.family = "Doe"
* name.given = "John"
* name.prefix = "DO"
* extension[legalAction].extension[malpracticeClaim].valueReference = Reference(MalpracticeClaim1)
* extension[legalAction].extension[saction].valueReference = Reference(Sanction-vhdir-restriction)
