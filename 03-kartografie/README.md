# Kartografie

![Meine Kinderweltkarte](img/kinderkarte.jpg)

**Was sind die Probleme mit dieser Karte?**

- Größendarstellung entspricht nicht der Realität (Vergleich Grönland - Afrika)
- Nicht aktuell (siehe [Süd-Sudan](https://de.wikipedia.org/wiki/S%C3%BCdsudan))
- "Unmöglich" zu aktualisieren
- Unhandlich/Platzbedarf
- Zusatzinformationen (Bevölkerungsdichte, Jahresniederschlag, Landessprache)?
- Verteilen/Kopieren der Karte?
- Accessibility? (Rot-Grün-Sehschwäche)

<img alt="thetruesize screenshot" src="img/thetruesize-screenshot.PNG" width="500"/>

[Größenvergleichstool für Mercator "The True Size"](https://thetruesize.com)

## Projektion

> Ein Kartennetzentwurf (auch Kartenprojektion oder Kartenabbildung genannt) ist eine Methode in der Kartografie, mit der man die gekrümmte Oberfläche der (dreidimensionalen) Erde auf die flache (zweidimensionale) Karte überträgt.

[Wikipedia DE "Kartennetzentwurf"](https://de.wikipedia.org/w/index.php?title=Kartennetzentwurf&oldid=164426786 "Wikipedia EN Kartennetzentwurf")

### Vorgehen

1. Auswahl eines geeigneten Modells für die Form der Erde
2. Umwandlung der geographischen Koordinaten (Länge und Breite) in ein kartesisches Koordinatensystem (x und y oder Rechtswert und Hochwert)
3. Skalierung der Karte

### Abbildungsfläche

- Mathematische Methode der Projektion
- Hilfsfläche als Projektionsleinwand. Dadurch erhält man ein flaches Abbild.
  - Ebene
  - Kegel (ausrollen)
  - Zylinder (ausrollen)

#### [Azimutalprojektion](https://de.wikipedia.org/w/index.php?title=Kartennetzentwurf#Azimutale_Abbildungen)

![Azimutalprojektion mit normaler Lage](img/Azimutalprojektion-polar_kl.jpg)

Azimutalprojektion mit normaler Lage

![Azimutalprojektion mit transversaler Lage](img/Azimutalprojektion-transversal_kl.jpg)

Azimutalprojektion mit transversaler Lage

![Azimutalprojektion mit schiefachsiger Lage](img/Azimutalprojektion-schief_kl.jpg)

Azimutalprojektion mit schiefachsiger Lage

In diesen drei Fällen eine parallel Projektion auf eine flache Leinwand. Es gibt noch einige andere Möglichkeiten bei der Azimutalprojektion die Kugel auf die Fläche zu bekommen.

#### [Kegelprojektion](https://de.wikipedia.org/w/index.php?title=Kartennetzentwurf#Kegelabbildungen_.28konische_Abbildungen.29)

![Kegelprojektion](img/Kegelprojektion_laengentreu_kl.jpg)

Kegelprojektion

#### [Zylinderprojektion](https://de.wikipedia.org/w/index.php?title=Kartennetzentwurf#Zylinderabbildungen)

<img alt="World map in Mercator style projection" src="img/Mercator-proj.png" width="400"/>

World map in Mercator style projection

### Abbildungseigenschaften (Verzerrung)

- längentreue (äquidistante) Abbildung
- flächentreue (äquivalente) Abbildung
- winkeltreue (konforme) Abbildung

#### [Tissotsche Indikatrix](https://de.wikipedia.org/wiki/Tissotsche_Indikatrix)

> Als tissotsche Indikatrix bezeichnet man Verzerrungsellipsen, mit deren Hilfe Kartennetzentwürfe auf ihre Verzerrungseigenschaften hin überprüft werden können.
> - Bei *winkeltreuen* Entwürfen sind alle Verzerrungsellipsen *Kreise*.
> - Bei *flächentreuen* Entwürfen haben alle Verzerrungsellipsen die *gleiche Flächengröße*.
> - Bei *längentreuen* Entwürfen haben die Verzerrungsellipsen in Richtung der Längentreue *gleich große Radien*. Meist sind Karten nur entlang der Breitenkreise oder Meridiane längentreu.

<img alt="Tissotsche Indikatrix auf einem Globus" src="img/Tissot_world_from_space.png" width="400"/>

Tissotsche Indikatrix auf einem Globus

#### Längentreue Abbildung

![Kegelprojektion](img/Kegelprojektion_laengentreu_kl.jpg)

Kegelprojektion längentreu

##### [Mittabstandstreue Azimutalprojektion](https://de.wikipedia.org/wiki/Mittabstandstreue_Azimutalprojektion)

<img alt="Mittabstandstreue polare  Azimutalprojektion" src="img/Azimuthal_Equidistant_N90.jpg" width="400"/>

Mittabstandstreue polare  Azimutalprojektion

<img alt="Mittelabstandstreue Azimutalprojektion; Mittelpunkt: Berlin" src="img/Azimuthal_Equidistant_Berlin.jpg" width="400"/>

Mittelabstandstreue Azimutalprojektion; Mittelpunkt: Berlin

#### Flächentreue Abbildung

##### [Goode-Projektion](https://de.wikipedia.org/wiki/Goode-Projektion)

<img alt="Goode-Projektion" src="img/Goode_homolosine_projection_SW.jpg" width="500"/>

Goode-Projektion

<img alt="Verzerrungen der Goode-Projektion verdeutlicht" src="img/Goode_homolosine_projection_Tissot_indicatrix.png" width="500"/>

Verzerrungen der Goode-Projektion verdeutlicht mit dem [tissotschen Indikatrix](https://de.wikipedia.org/wiki/Tissotsche_Indikatrix)

##### [Sinusoidal-Projektion](https://de.wikipedia.org/wiki/Sinusoidal-Projektion)

<img alt="Sinusoidal Projection" src="img/Sinusoidal_Projection_11-5-30.jpg" width="500"/>

Sinusoidal Projection

<img alt="Sinusoidal-Projektion mit der tissotschen Indikatrix" src="img/Tissot_indicatrix_world_map_sinusoidal_proj.png" width="500"/>

Sinusoidal-Projektion mit der [tissotschen Indikatrix](https://de.wikipedia.org/wiki/Tissotsche_Indikatrix)

##### [Flächentreue Azimutalprojektion](https://de.wikipedia.org/wiki/Fl%C3%A4chentreue_Azimutalprojektion)

<img alt="Polare Lambertsche Azimutalprojektion" src="img/Lambert_2.jpg" width="400"/>

Polare Lambertsche Azimutalprojektion

#### Winkeltreue Abbildung

##### [Mercator-Projektion](https://de.wikipedia.org/wiki/Mercator-Projektion)

<img alt="World map in Mercator style projection" src="img/Mercator-proj.png" width="400"/>

World map in Mercator style projection

<img alt="Tissotsche Indikatrix; Merkator-Projektion" src="img/Tissot_mercator.png" width="400"/>

Winkeltreue Mercatorprojektion (Alle Verzerrungsellipsen sind Kreise)

##### [Lambert-Gaußsche winkeltreue Kegelprojektion](https://de.wikipedia.org/wiki/Lamberts_winkeltreue_Kegelprojektion)

<img alt="Weltkarte in Lambertscher Kegelprojektion" src="img/World_borders_lambertcc000045.png" width="500"/>

Weltkarte in Lambertscher Kegelprojektion

#### Kompromiss: [Winkel-Tripel-Projektion](https://de.wikipedia.org/wiki/Winkel-Tripel-Projektion)

<img alt="Winkel-Tripel-Projektion" src="img/Winkel-tripel-projection.jpg" width="500"/>

Winkel-Tripel-Projektion

<img alt="Tissotsche Indikatrix der Winkel-Tripel-Projektion" src="img/Tissot_indicatrix_world_map_Winkel_Tripel_proj.png" width="500"/>

Verzerrungen der Winkel-Tripel-Projektion verdeutlicht mit der Tissotschen Indikatrix

<img alt="Behrmanns flächentreuer Schnittzylinderentwurf" src="img/Tissot_behrmann.png" width="400"/>

Behrmanns flächentreuer Schnittzylinderentwurf

[metrocosm.com: World map projection comparison](http://metrocosm.com/compare-map-projections.html)

## Zusammenfassung

YouTube Video von [Vox](https://www.vox.com/) mit dem Titel "[Why all world maps are wrong](https://youtu.be/kIID5FDi2JQ)"

[![Video von Vox mit dem Titel "Why all world maps are wrong"](http://img.youtube.com/vi/kIID5FDi2JQ/0.jpg)](http://www.youtube.com/watch?v=kIID5FDi2JQ)

## Interessante Links

- [Your World Map is Hiding Something](http://metrocosm.com/mercator/)

- [Map Projection Transitions](https://www.jasondavies.com/maps/transition/)

- [Projection Transitions libary](https://bl.ocks.org/mbostock/3711652)

- Videoclip aus ["The West Wing"](https://de.wikipedia.org/wiki/The_West_Wing_%E2%80%93_Im_Zentrum_der_Macht) zum Thema Voreingenommenheit der Mercator-Projektion, durch die Vergrößerung der westlichen Welt.

[![The West Wing Videoclip](http://img.youtube.com/vi/vVX-PrBRtTY/0.jpg)](http://www.youtube.com/watch?v=vVX-PrBRtTY)

- [xkcd.com: Map Projections](https://xkcd.com/977/)

<img alt="xkcd: Map Projections" src="img/xkcd_map_projections.png" width="500"/>
