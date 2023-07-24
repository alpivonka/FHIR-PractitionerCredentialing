Profile: DQPSVPractitioner
Parent: Practitioner
Id: DQ-PSV-Practitioner-Legal-Action
Title: "Data Quality and Primary Source Verfication Practitioner"
//Description:"Profile: DQPSVPractitioner Practitioner"
* extension contains LegalAction named legalAction 0..1
* extension contains MalpracticeCoverage named malpracticeCoverage 0..1
* extension contains PrimarySource named primarySource 0..1

Profile: DQPSVMalpracticeCliam
Parent: Claim
Id: DQ-PSV-malpractice-claim
//Description:"Profile: Malpractice Claim"
* extension contains PrimarySource named primarySource 0..1

Profile: DQPSVMalpracticeCoverage
Parent: Coverage
Id: DQ-PSV-malpractice-coverage
//Description:"Profile: Malpractice Coverage"
* extension contains PrimarySource named primarySource 0..1

Profile: DQPSVSanction
Parent: Consent
Id: DQ-PSV-santion
//Description:"Profile: DQPSV Sanction instance of Consent"
* extension contains PrimarySource named primarySource 0..1

Profile: DQPSVWorkHistory
Parent: PractitionerRole
Id: practitionerRole
//Description:"Profile: DQPSV Work History instance of PractitionerRole"
* extension contains PrimarySource named primarySource 0..1
