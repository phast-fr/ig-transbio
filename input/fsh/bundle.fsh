// This is a SemanticTransactionBundle profile.
Profile: SemanticTransactionBundle
Parent: Bundle
Id: semantic-transaction-bundle
Description: "A profile of the Bundle resource for PHAST semantic services."
* type = #transaction
* entry.resource only semantic-observation
* entry.response 0..0
* signature 0..0

Instance: phast-exemple-lab-panel-nak-transaction
InstanceOf: SemanticTransactionBundle
Usage: #example
* type = #transaction
* entry[0].fullUrl = "url-absolue-sur-le-serveur-de-PHAST-de-la-ressource-observation-nak-si-pas-persistee-tu-vires-cet-element"
* entry[=].resource = exemple-nak
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/exemple-nak"
* entry[+].fullUrl = "url-absolue-sur-le-serveur-de-PHAST-de-la-ressource-observation-na-si-pas-persistee-tu-vires-cet-element"
* entry[=].resource = exemple-na
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/exemple-na"
* entry[+].fullUrl = "url-absolue-sur-le-serveur-de-PHAST-de-la-ressource-observation-k-si-pas-persistee-tu-vires-cet-element"
* entry[=].resource = exemple-k
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/exemple-k"

Profile: SemanticTransactionResponseBundle
Parent: Bundle
Id: semantic-transaction-response-bundle
Description: "A profile of the Bundle resource for PHAST semantic services."
* type = #transaction-response
* entry.resource only semantic-observation
* entry.request 0..0
* entry.response.outcome only OperationOutcome
* signature 0..0

Instance: phast-exemple-lab-panel-nak-transaction-response
InstanceOf: Bundle
Usage: #example
* type = #transaction-response
* entry[0].resource = exemple-nak
* entry[=].response.status = "Updated"
* entry[=].response.etag = "W/\"2\""
* entry[+].resource = exemple-na
* entry[=].response.status = "Updated"
* entry[=].response.etag = "W/\"2\""
* entry[+].resource = exemple-k
* entry[=].response.status = "Updated"
* entry[=].response.etag = "W/\"2\""
