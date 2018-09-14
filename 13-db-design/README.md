# Das Film Business DB Design

Filme haben einen Namen und einen Direktor. Kinos haben ebenfalls einen Namen, sowie die Anzahl der Kinosäle. Da Filme an verschieden Orten aufgenommen werden haben Sie eine „Multipoint" Location. Kinos hingegen haben ein „Multi Polygon" für den Grundriss des Gebäudes als Geometrie. Filme könne gleichzeitig in mehreren Kinos angesehen werden und haben deshalb ein Erscheinungsdatum und ein „aus dem Programm genommen" Datum für das jeweilige Kino.

Kinos haben immer eine Betreiberfirma, welche neben dem Namen auch eine Rechtsform braucht. Das Head Office wird mit einer Punkt Geometrie hinterlegt. Da eine solche Betreiberfirma nicht wie ein kopfloses Huhn durch die Gegend läuft, hat die Firma einen CEO, der einen Namen und eine Adresse (varchar) hat. Dieser CEO muss häufig Geschäftsreisen unternehmen für die das Startdatum und die Route als „Line String" hinterlegt ist.

Da die Kino-Betreiberfirmen viel Großkapital brauchen sammeln sie Geld von Shareholden ein. Diese Shareholder können natürlich um ihr Risiko zu minimieren in mehrere Betreiberfirmen investieren. Da Shareholder so unglaublich reich sind, müssen wir die Namen und das gesamt Vermögen wissen. Ob da ein Integer ausreichen wird?

- ID versteht sich hoffentlich von selbst (Integer)
- Alle Geometries haben die EPSG Nummer `4326`
