# Aufgabe 1

1. Besorgt euch von <http://www.geofabrik.de/de/data/shapefiles.html> das Beispiel ZIP-Archiv von Dresden und importiert ein paar Shapefiles.
2. Überlegt euch ein paar interessante Abfragen auf die importierten Daten und schreibt diese in natürlicher Sprache auf. Die Lösung ist geheim.
3. Gebt die Fragen an eure Kommilitonen zum lösen weiter.

Spielregeln:

- Die schwerste Aufgabe gewinnt.
- Wer die Lösung zu seiner eigenen Aufgabe nicht kennt verliert.
- Wer die Lösung zu seiner eigenen Aufgabe nicht erklären kann verliert.
- Die Gruppe wählt den Gewinner.

Preis:

Dem Gewinner sollen Ruhm und Ehre widerfahren.

![winner winner chicken dinner](https://media.giphy.com/media/l41lYCDgxP6OFBruE/giphy.gif)

# Aufgabe 2

Visualisiert die Dresden Layer aus der Aufgabe davor mit QGIS.

Spielregeln:

- Die schönste Gesamtkomposition gewinnt.
- Die Gruppe wählt den Gewinner.
- Alle sind Gewinner, da Kunst immer im Auge des Betrachter liegt.

Preis:

Dem Gewinner sollen Ruhm und Ehre widerfahren.

![](https://media.giphy.com/media/CovFciJgWyxUs/giphy.gif)

# Aufgabe 3

Erweitert den OpenStreetMap Datenbestand.

- Macht euch einen [OpenStreetMap](https://www.openstreetmap.org/) Account.
- Sucht euch einen OSM Bereich der noch nicht kartiert wurde und kartiert diesen.
- Denkt daran die passenden [Tags](https://wiki.openstreetmap.org/wiki/Tags) zu vergeben z.B. Tag:[vending=excrement_bags](https://wiki.openstreetmap.org/wiki/Tag:vending=excrement_bags)
- [TagFinder](https://tagfinder.herokuapp.com/)
- Macht vorher und nachher Screenshots.
- Suchet nach den neu vergebenen Tags in der Geocoding Suchmaschine [Nominatim](http://nominatim.openstreetmap.org/)

# Aufgabe 4

- Besorgt euch den Gebäudeplan der TH: <https://www.th-bingen.de/campus/einrichtungen/standorte/>
- Wandelt die Datei in eine TIFF-Datei und setzt den Hintergrund auf transparent.
- Sucht euch z.B. in QGIS auf dem Satellitenbild markante Punkte heraus die auch auf dem Gebäudeplan zu erkennen sind und notiert (elektronisch) euch die Koordinaten (UTM 32 | EPSG: 32632).
- Startet in QGIS den Georeferencer `Raster -> Georeferencer -> Georeferencer`
- EPSG: 32632 auswählen
- Erfasst nun in dem Fenster eure notierten Koordinaten.
- Startet die Georeferenzierung mit den Einstellungen: Helmert, Cubic, EPSG: 32632.
- Lasst euch die Tabelle mit den Restfehlern anzeigen.
- Schaut euch das GeoTIFF in QGIS zusammen mit einem Satellitenbild an.
