# Lösung Aufgabe 3

```sql
SELECT st_astext(st_extent(geom))
FROM building;

SELECT st_astext(st_envelope(geom))
FROM building;

SELECT st_astext(st_envelope(st_collect(geom)))
FROM building;

SELECT st_astext(st_centroid(st_union(geom)))
FROM building;

-- 59 students
SELECT count(id)
FROM student
WHERE st_within(position, (SELECT st_union(geom)
                           FROM building
                           WHERE building_no = 5));

-- 425 students
SELECT count(id)
FROM student
WHERE st_within(position, (SELECT st_union(geom)
                           FROM building));
```

# Lösung Aufgabe 4

Ein Kind findet die Granate.

```sql
select  st_astext(st_geomfromtext('Point(422473 5533925)',32632));

-- 299 Studenten im abstand von 400 m
SELECT count(*)
FROM student
WHERE st_dwithin(st_geomfromtext('Point(422473 5533925)', 32632), position, 400);

-- Geb 2, 5, 7 + Parkplatz
SELECT *
FROM building
WHERE st_dwithin(st_geomfromtext('Point(422473 5533925)', 32632), geom, 400);


-- 400.25703410910194 m
SELECT st_distance(st_geomfromtext('Point(422473 5533925)', 32632), geom)
FROM building
WHERE building_no = 3;
```
