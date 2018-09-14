# Aufgabe 1

Nutzt QGIS um die `building` und `student` Tabelle zu visualisieren z.B. regelbasierte Gebäudefarbe, Farbe für Studenten.

# Aufgabe 2

Erstellt eine neue Datenbank mit einer Building Tabelle. Erfasst mit QGIS in diese Tabelle hinein die Umrisse eines Gebäudekomplex und gewisse Metadaten z.B. Gebäudenummer oder Funktion.

Beispiele:

- Google Campus
- SAP Campus
- [Palm Islands](https://en.wikipedia.org/wiki/Palm_Islands)

# Aufgabe 3

_Geben Sie jeweils das SQL statement und die resultierende Antwort an!_

1. Findet zunächst die Bound-Box des gesamten Campus heraus. Nutzt dazu einmal die `ST_`-Funktion `ST_Envelope` und dann die Funktion `ST_Extent`. Was ist der Unterschied zwischen den Funktionen und welche ist die passendere Funktion für die Fragestellung?
2. Finden Sie außerdem den Zentroiden des gesamten Campus (Hinweis: Verwenden Sie zwei geschachtelte `ST_` -Funktionen; eine davon könnte `ST_Union` sein).
3. Wie viele Studenten befinden sich in Gebäude 5?
4. Wie viele Studenten befinden sich innerhalb von Gebäuden oder auf Parkplätzen?

# Aufgabe 4

**Bombenalarm**

Es wird eine alte Weltkriegsgranate auf der UTM Koordinate `32 U 422473 5533925` gefunden und es wird eine Räumung von 400 m angeordnet.

_Geben Sie jeweils das SQL statement und die resultierende Antwort an!_

- Wer findet die Granate?
- Wie viele Studenten müssen sich aus dem Sperrbezirk bewegen?
- Welche Gebäude der FH müssen geräumt werden?
- Wie weit ist das Gebäude 3 von der Fundstelle entfernt?
