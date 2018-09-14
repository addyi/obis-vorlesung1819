# Lösung Aufgabe 2

```
$ proj +proj=utm +zone=31 +ellps=WGS84 +datum=WGS84 +units=m +no_defs
2.2947 48.858
448266.26    5411910.31

$ proj +proj=utm +zone=14 +ellps=WGS84 +datum=WGS84 +units=m +no_defs
-98d32'30.506" 39d13'26.686"
539550.35    4341743.40

$ proj +proj=utm +zone=11 +ellps=WGS84 +datum=WGS84 +units=m +no_defs
-117.262 32.805
475471.32    3629699.95
```

1. Eifelturm
2. [Ursprung NAD](https://de.wikipedia.org/wiki/North_American_Datum)
3. Tourmaline Surf Park haben wir uns bei Zwillo angesehen

# Lösung Aufgabe 3

Ursprungskoordinaten                             | Ort
------------------------------------------------ | -------------------
`38°53'51.6336"N 77°2'11.508"W`                  | Weißes Haus
`40.762428°` N-Bereite und `-73.973794°` W-Länge | Trump Tower
`-43d12'41.2092"W -22d57'8.4672"S`               | Corcovado
Lat Long: `-13.163141 -72.544963`                | Googleplex
Long Lat: `2.294481 48.858370`                   | Eifelturm
`31°7'56.9856" E 29°58'38.2656" N`               | Pyramiden von Gizeh
Breit/Läng: `-33.856784, 151.215297`             | Sydney Oper

## Lösung Aufgabe 4

Nein es gibt keinen Fehler

GK3 -> GK4

```
cs2cs +init=epsg:31467 +to +init=epsg:31468
3579500 5916050
4379854.51      5916904.16 0.00
```

UTM -> GK4

```
cs2cs +init=epsg:25832 +to +init=epsg:31468
579397 5914124
4379854.57      5916905.69 -40.17
```

UTM -> GK3

```
cs2cs +init=epsg:25832 +to +init=epsg:31467
579397 5914124
3579500.00      5916051.53 -40.17
```

UTM -> latlong

```
cs2cs +init=epsg:25832 +to +init=epsg:4258
579397 5914124
10d11'36.022"E  53d22'12.944"N 0.000
```

GK4 -> latlong

```
cs2cs +init=epsg:31468 +to +init=epsg:4258
4379855 5916904
10d11'36.047"E  53d22'12.889"N 40.171
```

GK3 -> latlong

```
cs2cs +init=epsg:31467 +to +init=epsg:4258
3579500 5916050
10d11'36.021"E  53d22'12.894"N 40.171
```

# Lösung Aufgabe 5

**Teil 1:**

```
$ proj +proj=utm +zone=11 +datum=WGS84
-117.262 32.805
475471.32    3629699.95

$ proj +proj=utm +zone=11 +ellps=clrk66
-117.262 32.805
475470.78    3629509.48

$ proj +proj=utm +zone=11 +ellps=clrk80
-117.262 32.805
475470.49    3629425.99
```

easting, northing in m

**Teil 2:**

```
$ proj +proj=utm +zone=11 +datum=WGS84 -I
475471.32    3629699.95
117d15'43.2"W    32d48'18"N

$ proj +proj=utm +zone=11 +ellps=clrk66 -I
475470.78    3629509.48
117d15'43.2"W    32d48'18"N

$ proj +proj=utm +zone=11 +ellps=clrk80 -I
475470.49    3629425.99
117d15'43.2"W    32d48'18"N
```

**Teil 3:** M 0,54 m easting, 190,47 m northing
