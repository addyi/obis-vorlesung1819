# Installationsanleitung PostGIS

Diese Anleitung basiert auf der Installationsanleitung von Marcel Akkerman "[Install PostGIS and GeoServer on Ubuntu 13.04][akkgist]"

Gehe per `ssh` auf deinen TH Server und ändere, falls du es nicht schon getan hast, dein Nutzerpasswort.

```
passwd        # nicht als root
```

## PostgreSQL

Installiere postgresql:

```
sudo apt-get install postgresql
```

Verbinde dich als user `postgres` (sudo -u postgres) mit der Datenbank `postgres` (psql postgres):

```
sudo -u postgres psql postgres
```

Ändere in der sql shell das Passwort (`\password`) und verlasse diese wieder mit `\q`.

## PostgreSQL nach außen öffnen

PostgreSQL akzeptiert nach der Installation keine Verbindungen von anderen Computern. Um sich über das Netzwerk auf PostgreSQL anmelden zu können, muss in der Datei `/etc/postgresql/9.5/main/postgresql.conf` das Horchen auf allen Netzwerkkarten erlaubt werden.

```
listen_addresses = '*'
```

**ACHTUNG**: Hiermit verringern wir die Sicherheit!!!!

In der Datei `/etc/postgresql/9.5/main/pg_hba.conf` erfolgt die Konfiguration, wer auf welche Datenbank darf und welche Methoden (Verschlüsselung, Passwort) dafür erforderlich sind.

Hiermit erlaubt ihr zugriff von überall:

```
host    all        all       0.0.0.0/0         md5
```

**ACHTUNG**: Hiermit verringern wir die Sicherheit!!!!

PostgreSQL restarten, um die Änderungen zu übernehmen

```
sudo /etc/init.d/postgresql restart
```

## Mit Postgres verbinden

Auf deinem _lokalen_ Rechner [pgAdmin] oder [DataGrip] installieren.

Mit Datenbank verbinden:

Angabe    | Wert
--------- | -------------
Host      | EureIP
Datenbank | postgres
User      | postgres
Passwort  | oben vergeben
Port      | 5432

Mit diesem SELECT Statement könnt ihr die Verbindung testen:

```
SELECT * FROM pg_user;
```

## PostGIS installieren

PPA hinzufügen:

```
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
```

PostGIS installieren:

```
sudo apt-get install postgis postgresql-9.5-postgis-2.3 postgresql-9.5-postgis-2.3-scripts
```

Mit PostgreSQL verbinden ([DataGrip]/[pgAdmin])

Datenbank erstellen:

```
CREATE DATABASE  geo;
```

Die PostGIS Erweiterung der Datenbank hinzufügen:

```
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
```

Zum Überprüfen kann man sich die spatial reference systems, welche die Datenbank kennt, anschauen:

```
SELECT * FROM spatial_ref_sys;
```

[akkgist]: https://gist.github.com/akkerman/6834282
[datagrip]: https://www.jetbrains.com/datagrip/
[pgadmin]: https://www.pgadmin.org/
