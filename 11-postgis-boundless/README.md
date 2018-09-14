Diese Vorlesung/Übung basiert auf dem [Workshop Material][workshop] von Boundless, welches unter der Creative Commons "Attribution-NonCommercial-ShareAlike" [CC BY-NC-SA 3.0][license] Lizenz veröffentlicht wurde. Das zum Download angebotene Kursmaterial liegt als Kopie auch im aktuellen Ordner dieses README.

--------------------------------------------------------------------------------

# Boundless Übung

Erstellt eine neue Datenbank `nyc_data` und fügt die PostGIS Erweiterung hinzu.

```sql
CREATE DATABASE nyc_data;
CREATE EXTENSION postgis;
```

Importiert entweder per QGIS oder per `shp2pgsql` die NYC Beispieldaten des Boundless Workshop. (QGIS braucht ewig)

Zu importierende Shapefiles: `nyc_census_blocks.shp`, `nyc_streets.shp`, `nyc_neighborhoods.shp`, `nyc_subway_stations.shp` und `nyc_homicides.shp`. Desweiteren nicht die `nyc_census_sociodata.sql` Datei vergessen.

Info           | Wert
-------------- | ------------------
Username       | postgres
Passwort       | Datenbank Passwort
Port           | 5432
Datenbank      | nyc_data
Shapefile SRID | 26918

**Variante 1**

Anleitung für Import mit QGIS: <http://blauorange.com/postgis-shapefile-import/>

**Variante 2**

Anleitung für `shp2pgsql`:

`man` für `shp2pgsql` mit Beispielen: <http://www.bostongis.com/pgsql2shp_shp2pgsql_quickguide.bqg>

Geht per ssh auf den Server und ladet euch die Daten runterladen

```sh
wget http://files.boundlessgeo.com/workshopmaterials/postgis-workshop-201401.zip
unzip postgis-workshop-201401.zip
```

Geht in das richtige Verzeichnis und konvertiert mit `shp2pgsql` die Shapefiles. Mit `psql` könnt ihr die `.sql` Dateien in der Datenbank ausführen.

```sh
shp2pgsql -D -s 26918 -i nyc_census_blocks.shp > foo.sql
psql -h localhost -d nyc_data -U postgres -f foo.sql
```

**Schaut euch die Daten in QGIS an.**

## Datenstruktur NYC Daten

Schaut euch die importierten Tabellen an. Infos darüber sind in Kapitel 6 des Workshop "[About our data][data]". Beantwortet diese Fragen und schreibt das jeweilige benötigte SQL Querie auf. Hier sind noch keine Geoabfragen nötig.

- "What are the names of all the neighborhoods in Brooklyn?"
- "What is the number of letters in the names of all the neighborhoods in Brooklyn?"
- "What is the average number of letters and standard deviation of number of letters in the names of all the neighborhoods in Brooklyn?"
- "What is the average number of letters in the names of all the neighborhoods in New York City, reported by borough?"
- "What is the population of the City of New York?"
- "What is the population of the Bronx?"
- "For each borough, what percentage of the population is white?"

Funktion              | Aufgabe
--------------------- | ----------------------------------------------------------------------------------
`avg(expression)`     | PostgreSQL aggregate function that returns the average value of a numeric column.
`char_length(string)` | PostgreSQL string function that returns the number of character in a string.
`stddev(expression)`  | PostgreSQL aggregate function that returns the standard deviation of input values.

## Geometrie Datentypen

Schaut euch die verschiedenen Geometrien an, welche in PostGIS abgelegt werden können. Infos darüber sind in Kapitel 9 des Workshop "[Geometries]". Beantwortet dann die folgenden Fragen und schreibt das jeweilige benötigte SQL Querie auf.

- "What is the area of the 'West Village' neighborhood?"
- "What is the area of Manhattan in acres?" (Hint: both nyc_census_blocks and nyc_neighborhoods have a boroname in them.)
- "How many census blocks in New York City have a hole in them?"
- "What is the total length of streets (in kilometers) in New York City?" (Hint: The units of measurement of the spatial data are meters.)
- "How long is 'Columbus Cir' (Columbus Circle)?
- "What is the JSON representation of the boundary of the 'West Village'?"
- "How many polygons are in the 'West Village' multipolygon?"
- "What is the length of streets in New York City, summarized by type?"

## Spatial Relationships

Schaut euch die verschiedenen geometrischen Beziehungen an. Infos darüber sind in Kapitel 11 des Workshop "[Spatial Relationships][sprel]". Beantwortet dann die folgenden Fragen und schreibt das jeweilige benötigte SQL Querie auf.

- "What is the geometry value for the street named 'Atlantic Commons'?"
- "What neighborhood and borough is Atlantic Commons in?"
- "What streets does Atlantic Commons join with?"
- "Approximately how many people live on (within 50 meters of) Atlantic Commons?"

[data]: http://workshops.boundlessgeo.com/postgis-intro/about_data.html
[geometries]: http://workshops.boundlessgeo.com/postgis-intro/geometries.html
[gjson]: https://en.wikipedia.org/wiki/GeoJSON
[gmlfil]: https://en.wikipedia.org/wiki/Geography_Markup_Language
[gtiffil]: https://en.wikipedia.org/wiki/GeoTIFF
[kmlfil]: https://en.wikipedia.org/wiki/Keyhole_Markup_Language
[license]: https://creativecommons.org/licenses/by-nc-sa/3.0/
[pgref]: http://postgis.net/docs/manual-2.4/reference.html
[shfil]: https://en.wikipedia.org/wiki/Shapefile
[sprel]: http://workshops.boundlessgeo.com/postgis-intro/spatial_relationships.html
[wktfil]: https://en.wikipedia.org/wiki/Well-known_text
[workshop]: http://workshops.boundlessgeo.com/postgis-intro/
