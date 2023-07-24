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
