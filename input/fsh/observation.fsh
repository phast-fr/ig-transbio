// This is a SemanticObservation profile.
Profile: SemanticObservation
Parent: Observation
Id: semantic-observation
Description: "A profile of the Observation resource for PHAST semantic services."
* identifier 0..0
* status = #final
* subject 0..0
* encounter 0..0
* performer 0..0
* hasMember only Reference (semantic-observation)

Instance: exemple-nak
InstanceOf: SemanticObservation
Description: "An instance of profile SemanticObservation for an Electrolytes 1998 panel - Serum or Plasma"
Usage: #example
* status = #final
* code.coding[0] = http://phast.fr/fhir/labo/example#NAK "Ionogramme sanguin (Na, K)"
* code.coding[+] = http://loinc.org#24326-1 "Ionogramme panel [-] Sérum/Plasma ; Numérique"
* issued = "2022-01-21T14:34:00+01:00"
* hasMember[0] = Reference(exemple-na) "exemple Observation na"
* hasMember[=].type = "Observation"
* hasMember[+] = Reference(exemple-k) "exemple Observation k"
* hasMember[=].type = "Observation"

Instance: exemple-na
InstanceOf: SemanticObservation
Usage: #example
* status = #final
* code.coding[0] = http://phast.fr/fhir/labo/example#NA "Sodium sanguin"
* code.coding[+] = http://loinc.org#24326-1 "Ionogramme panel [-] Sérum/Plasma ; Numérique"
* issued = "2022-01-21T14:34:00+01:00"
* valueQuantity = 141 'mmol/L' "mmol/l"

Instance: exemple-k
InstanceOf: SemanticObservation
Usage: #example
* status = #final
* code.coding[0] = http://phast.fr/fhir/labo/example#K "Potassium sanguin"
* code.coding[+] = http://loinc.org#24326-1 "Ionogramme panel [-] Sérum/Plasma ; Numérique"
* issued = "2022-01-21T14:34:00+01:00"
* valueQuantity = 4.3 'mmol/L' "mmol/l"
