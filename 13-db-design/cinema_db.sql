DROP DATABASE cinema;

CREATE DATABASE cinema;
CREATE EXTENSION postgis;

-- delete table if exists
DROP TABLE IF EXISTS investor CASCADE;
DROP TABLE IF EXISTS theatrical_run CASCADE;
DROP TABLE IF EXISTS cinema CASCADE;
DROP TABLE IF EXISTS cinema_operator CASCADE;
DROP TABLE IF EXISTS business_trip CASCADE;
DROP TABLE IF EXISTS chairperson CASCADE;
DROP TABLE IF EXISTS movie CASCADE;
DROP TABLE IF EXISTS shareholder CASCADE;

-- create the tables
CREATE TABLE shareholder (
  shareholder_id INTEGER UNIQUE NOT NULL,
  name           VARCHAR(40),
  net_worth      BIGINT         NOT NULL,
  PRIMARY KEY (shareholder_id)
);

CREATE TABLE movie (
  movie_id           INTEGER UNIQUE NOT NULL,
  name               VARCHAR(40),
  director           VARCHAR(40),
  recording_location GEOMETRY(MULTIPOINT, 4326),
  PRIMARY KEY (movie_id)
);

CREATE TABLE chairperson (
  chairperson_id INTEGER UNIQUE NOT NULL,
  name           VARCHAR(40),
  adress         VARCHAR(60),
  PRIMARY KEY (chairperson_id)
);

CREATE TABLE business_trip (
  trip_id  INTEGER UNIQUE                    NOT NULL,
  start    TIMESTAMP                         NOT NULL,
  route    GEOMETRY(LineString, 4326),
  traveler INTEGER REFERENCES chairperson    NOT NULL,
  PRIMARY KEY (trip_id)
);

CREATE TABLE cinema_operator (
  operator_id INTEGER UNIQUE                    NOT NULL,
  name        VARCHAR(40),
  legal_form  VARCHAR(40) CHECK (legal_form IN
                                 ('GmbH', 'Ltd', 'Co', 'OHG', 'KG', 'GbR', 'AG', 'KGaA', 'eG')),
  head_office GEOMETRY(Point, 4326),
  ceo         INTEGER REFERENCES chairperson    NOT NULL,
  PRIMARY KEY (operator_id)
);

CREATE TABLE cinema (
  cinema_id   INTEGER UNIQUE                        NOT NULL,
  name        VARCHAR(40),
  theater     INTEGER,
  operator    INTEGER REFERENCES cinema_operator    NOT NULL,
  ground_plan GEOMETRY(MULTIPOLYGON, 4326),
  PRIMARY KEY (cinema_id)
);

CREATE TABLE theatrical_run (
  movie_id        INTEGER REFERENCES movie  NOT NULL,
  cinema_id       INTEGER REFERENCES cinema NOT NULL,
  first_screening TIMESTAMP                 NOT NULL,
  last_screening  TIMESTAMP,
  PRIMARY KEY (movie_id, cinema_id)
);


CREATE TABLE investor (
  shareholder   INTEGER REFERENCES shareholder     NOT NULL,
  stock_company INTEGER REFERENCES cinema_operator NOT NULL,
  PRIMARY KEY (shareholder, stock_company)
);

-- insert values in table

INSERT INTO shareholder (shareholder_id, name, net_worth)
VALUES (1, 'addyi', 93401098852734);
INSERT INTO shareholder (shareholder_id, name, net_worth)
VALUES (2, 'wullxz', 132228349102);


INSERT INTO movie (movie_id, name, director, recording_location)
VALUES (1,
        'LOTR: The Fellowship of the Ring',
        'Peter Jackson',
        st_geomfromtext('MULTIPOINT(-119.50 40.10, -119.30 40.30, -119.90 39.50)', 4326));

INSERT INTO movie (movie_id, name, director, recording_location)
VALUES (2,
        'LOTR: The two Towers',
        'Peter Jackson',
        st_geomfromtext('MULTIPOINT(170.50 -42.90, 171.10 -42.50)', 4326));
INSERT INTO movie (movie_id, name, director, recording_location)
VALUES (3,
        'LOTR: The Return of the King',
        'Peter Jackson',
        st_geomfromtext('MULTIPOINT(11.7 51.5, 11.4 51.8, 11.2 51.4, 11.8 51.9)', 4326));


INSERT INTO chairperson (chairperson_id, name, adress)
VALUES (1, 'Klaus Bäcker', 'Berlinstr. 109, 55411 Bingen am Rhein');
INSERT INTO chairperson (chairperson_id, name, adress)
VALUES (2, 'Angela Merkel', 'Rungestraße 20, 10179 Berlin');


INSERT INTO business_trip (trip_id, start, route, traveler)
VALUES (1, '2004-01-08 04:05:06', st_geomfromtext(
                                    'LINESTRING(9.768539324482903 51.25436274125726 , -3.82247190958029 53.836259671523415, 3.397752808515732 47.667874633616073, -5.946067414902681 41.633170160599661, 19.112359547901317 46.51125244272432)',
                                    4326), 1);

INSERT INTO business_trip (trip_id, start, route, traveler)
VALUES (2, '2017-12-05 13:35:24', st_geomfromtext(
                                    'LINESTRING(137.022471941151053 36.01318514615167 , 115.786516887927348 28.479520537108545 , 77.137078691060225 18.364854213960186 , 140.420224749666801 -28.105539787573914 , 169.725842723115505 -44.426629087611907)',
                                    4326), 1);

INSERT INTO business_trip (trip_id, start, route, traveler)
VALUES (3, '2018-06-24 17:15:34', st_geomfromtext(
                                    'LINESTRING(-78.148314595863269 36.697277872005237 , -116.797752792730435 34.276858433370805 , -125.716853915084371 50.987777385683621 , -146.952808968308091 62.713683423102445 , -64.132584260735626 -1.274052296027126)',
                                    4326), 2);


INSERT INTO cinema_operator (operator_id, name, legal_form, head_office, ceo)
VALUES (1, 'Cineplex', 'GmbH', st_geomfromtext('POINT(7.153520 51.256970)', 4326), 1);

INSERT INTO cinema_operator (operator_id, name, legal_form, head_office, ceo)
VALUES (2, 'CineStar', 'AG', st_geomfromtext('POINT(10.690140 53.860550)', 4326), 2);


INSERT INTO cinema (cinema_id, name, theater, operator, ground_plan)
VALUES (1, 'CineStar Mainz', 6, 2, st_geomfromtext(
                                     'MULTIPOLYGON(((8.27939259286455 49.9939587270651,8.27970248822114 49.9937898212232,8.27967890922661 49.9937530083328,8.28000564672214 49.9936685551247,8.2798035410548 49.9932809346516,8.27859090705078 49.9935537851426,8.2785841701952 49.9935992600739,8.27849995950048 49.993618749317,8.27858753862299 49.9937963176127,8.27871890730676 49.9937963176127,8.27886711812947 49.9938071449243,8.27903217109113 49.9938352959306,8.27918038191384 49.9938677778394,8.27928817160309 49.9939067560999,8.27939259286455 49.9939587270651)))',
                                     4326));
INSERT INTO cinema (cinema_id, name, theater, operator, ground_plan)
VALUES (2, 'Cineplex Bad Kreuznach', 8, 1, st_geomfromtext(
                                             'MULTIPOLYGON(((7.85862764157737 49.8418377859974,7.85838878655588 49.8419721208855,7.85835545794823 49.8419936144329,7.85833323887647 49.8420186902262,7.85830824242073 49.842058095018,7.85830268765279 49.8420939175281,7.85830268765279 49.842127948888,7.8582443625894 49.8421601891017,7.85835823533221 49.8422640740885,7.85839989609177 49.842249745138,7.85851654621854 49.8423339276609,7.85874429170414 49.8422604918513,7.85861097727355 49.8421243666408,7.85884427752709 49.841988241047,7.85862764157737 49.8418377859974)))',
                                             4326));

INSERT INTO theatrical_run (movie_id, cinema_id, first_screening, last_screening)
VALUES (1, 1, '2001-09-03', '2002-03-05');
INSERT INTO theatrical_run (movie_id, cinema_id, first_screening, last_screening)
VALUES (2, 1, '2004-09-03', '2005-03-05');
INSERT INTO theatrical_run (movie_id, cinema_id, first_screening, last_screening)
VALUES (3, 1, '2008-09-03', '2009-03-05');
INSERT INTO theatrical_run (movie_id, cinema_id, first_screening, last_screening)
VALUES (1, 2, '2001-09-23', '2002-03-25');
INSERT INTO theatrical_run (movie_id, cinema_id, first_screening, last_screening)
VALUES (2, 2, '2004-09-23', '2005-03-25');
INSERT INTO theatrical_run (movie_id, cinema_id, first_screening, last_screening)
VALUES (3, 2, '2008-09-23', '2009-03-25');


INSERT INTO investor (shareholder, stock_company)
VALUES (1, 1);
INSERT INTO investor (shareholder, stock_company)
VALUES (1, 2);
INSERT INTO investor (shareholder, stock_company)
VALUES (2, 1);
INSERT INTO investor (shareholder, stock_company)
VALUES (2, 2);