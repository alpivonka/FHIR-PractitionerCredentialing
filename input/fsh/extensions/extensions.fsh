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
* ^context[+].type = #element
* ^context[=].expression = "Coverage"
* ^context[+].type = #element
* ^context[=].expression = "Claim"
* ^context[+].type = #element
* ^context[=].expression = "Consent"
* ^context[+].type = #element
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
