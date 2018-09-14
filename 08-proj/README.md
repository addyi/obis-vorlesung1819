# Aufgabe 1

Installiert euch die Terminaltools `proj` und `cs2cs`. Falls wir schon V-Server von der TH organisiert haben, könnt ihr diese auch darauf installieren.

## Linux Installation (Debian)

```
sudo apt-get install proj-bin
```

## Windows Installation

Das GIS-Tool "[QGIS](http://qgis.org/)" enthält die OSGeo4W Shell in der die beiden Terminaltools enthalten sind.

## Benutzung

### proj

- Standard Unix Filter
- Konvertierung von Polar- in Kartesische- Koordinaten

  - Invertierung der Umwandlung mit `-I`
  - **Achtung**: longitude latitude order (`-r` reverse)

**Beispiel 1**: longitude latitude Reihenfolge

```
proj +proj=utm +zone=11 +datum=WGS84 <enter>
-117.262 32.805 <enter>
475471.32 3629699.95
```

**Beispiel 2**: Umwandlung von UTM in longitude und latitude mit `-I`

```
proj +proj=utm +zone=11 +datum=WGS84 -I <enter>
475471.32 3629699.95 <enter>
117d15'43.2"W 32d48'18"N
```

**Beispiel 3**: Es geht auch die Angabe der EPSG Nummer (hier WGS 84 / UTM Zone 32N)

```
proj +init=epsg:32632 <enter>
7.924970 49.952633 <enter>
422880.85 5533918.11
```

**Beispiel 4**: Vertauschen von longitude und latitude mit `-r`

```
proj +init=epsg:32632 -r <enter>
49.952633 7.924970 <enter>
422880.85 5533918.11
```

### cs2cs

Umwandlung von Koordinatenreferenzsystem zu Koordinatenreferenzsystem (CRS to CRS). Parameter die selben wie bei `proj`. Start CRS und Ziel CRS werden mit `+to` getrennt.

```
cs2cs +proj=latlong +datum=WGS84 +to +proj=utm +zone=32 +datum=WGS84
```

### Parameter finden

<http://spatialreference.org/ref/>

# Aufgabe 2

1. Welches Kartendatum verwendet Google Earth?
2. Projizieren die aufgeführten Längen- und Breitengrade in UTM und gebet die entsprechenden proj Kommandos an (ACHTUNG Long/Lat Reihenfolge).
3. Überprüft eure Ergebnisse mit [latlong.net](https://www.latlong.net/lat-long-utm.html).
4. Was liegt an diesen Orten (Screenshot)?

```
2.2947 48.858

-98d32'30.506" 39d13'26.686"

-117.262 32.805
```

# Aufgabe 3

Transformiert die folgenden Längen- und Breitengrade mit [latlong.net](https://www.latlong.net) in UTM. Was liegt an diesen Orten (Screenshot)?

- ACHTUNG: Längen- und Breitengrade
- `38°53'51.6336"N 77°2'11.508"W`
- `40.762428°` N-Bereite und `-73.973794°` W-Länge
- `-43d12'41.2092"W -22d57'8.4672"S`
- Lat Long: `-13.163141 -72.544963`
- Long Lat: `2.294481 48.858370`
- `31°7'56.9856" E 29°58'38.2656" N`
- Breit/Läng: `-33.856784, 151.215297`

# Aufgabe 4

In in einer Grafik (S.15) im Buch "[Geoinformatik][gi]" von Manfred Ehlers & Jochen Schiewe habe ich folgende vier Positionsangaben zu einem Punkt gefunden. Ich glaube der Ersteller dieser Grafik hat einen Fehler bei einem dieser Koordinatenangaben gemacht. Stimmt das?

1. Benutzt cs2cs zum transformieren.
2. Dokumentiert eure Kommandos und Ergebnisse.

Koordinaten von Beispielpunkt P

```
Gauß-Krüger (Streifen 3, Potsdam-Datum)
Rechts = 3579500 m
Hoch = 5916050 m

Gauß-Krüger (Streifen 4, Potsdam-Datum)
Rechts = 4379855 m
Hoch = 5916904 m

UTM (Zone 32, ETRS89)
Easting = 32 579397 m
Northing = 5914124 m

Geographische Koordinaten (ETRS89)
Länge = 10°11'36"
Breite = 53°22'13"
```

Ehlers, M. & Schiewe, J. (2012): [Geoinformatik][gi]. ISBN: 978-3-534-23526-1\. Wissenschaftliche Buchgesellschaft. Seite 15

# Aufgabe 5

**Für die schnellen**

1. Projizieren Sie die WGS 84 Koordinate (Längen- und Breitengrad) `-117.262 32.805` in die folgenden Koordinatensysteme und geben Sie die entsprechenden proj Kommandos an:

  - UTM mit WGS 84 Datum,

  - UTM mit Clarke 1866 Ellipsoiden,

  - UTM mit Clarke 1880 mod. Ellipsoiden.

2. Konvertieren Sie die Werte jeweils auch wieder zurück. Vergleichen Sie die Werte mit den ursprünglichen Koordinaten. Geben Sie wieder die entsprechenden proj Kommandos an.

3. Wie weit liegen die Punkte auseinander, wenn Sie für die Projektion der Koordinate `-117.262 32.805` nach UTM statt des WGS 84 Ellipsoiden den Clarke 1866 Ellipsoiden verwenden?

# Aufgabe 6

**Für die schnellen**

Arbeitet weiter an eurer Geo Smartphone App

- Macht euch Gedanken zum Userinterface
- Wie sieht die Software und Projektstruktur aus?
- Welche Geodaten müsst ihr speichern? Von welchem Type sind diese (Punkt, Linienzug, Polygon)?
- Wie könnte euer Datenbankschema aussehen?
- Macht euch Gedanken zu den Use-Cases

[gi]: https://www.wbg-wissenverbindet.de/3640/Geoinformatik
