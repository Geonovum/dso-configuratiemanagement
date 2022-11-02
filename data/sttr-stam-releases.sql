--
-- STAM van 2022-07-18
--
insert into Releases(versienummer,itemid,downloaduri,status,releasedatum) values
('2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/stam-imam/','','2022-07-18'),
('2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/stam-imam/load','','2022-07-18'),
('2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM-in-EA','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/stam-imam/','','2022-07-18'),
('2.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-XSD','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/stam-imam/','','2022-07-18'),
('2.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-voorbeelden','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/stam-imam/','','2022-07-18');

insert into ReleaseDependencies(itemid,dependsonitem) values
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM/2.0.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM-in-EA/2.0.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-XSD/2.0.0'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-voorbeelden/2.0.0');

--
-- STAM van 2022-11-15
--
insert into Releases(versienummer,itemid,downloaduri,status,releasedatum) values
('2.1.0-rc','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/stam-imam/','','2022-11-15'),
('3.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/stam-imam/','','2022-11-15'),
('2.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/XSD-verzoeknotificatie','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/stam-imam/','','2022-11-15'),
('3.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/XSD-verzoekbericht','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/stam-imam/','','2022-11-15'),
('3.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-voorbeelden','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/stam-imam/','','2022-11-15');

insert into ReleaseDependencies(itemid,dependsonitem) values
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.1.0-rc','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM/2.0.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.1.0-rc','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM-in-EA/2.0.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.1.0-rc','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-XSD/2.0.0'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.1.0-rc','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-voorbeelden/2.0.0');

--
-- STTR van 2022-09-30
--
insert into Releases(versienummer,itemid,downloaduri,status,releasedatum) values
('1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/sttr-imtr/','','2022-09-30'),
('1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-specificatie','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/sttr-imtr/','','2022-09-30'),
('1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-specificatie','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/sttr-imtr/','','2022-09-30'),
('1.0.8','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-in-EA','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/sttr-imtr/','','2022-09-30'),
('1.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-XSD','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/sttr-imtr/','','2022-09-30'),
('nn','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-voorbeelden','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/sttr-imtr/','','2022-09-30');

insert into ReleaseDependencies(itemid,dependsonitem) values
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-specificatie/1.4.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-specificatie/1.4.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-inEA/1.0.8'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-XSD/1.0'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-voorbeelden/nn');

--
-- STTR van 2022-11-15
--
insert into Releases(versienummer,itemid,downloaduri,status,releasedatum) values
('1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/sttr-imtr/','','2022-11-15'),
('1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-specificatie','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/sttr-imtr/','','2022-11-15'),
('1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-voorbeelden','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/sttr-imtr/','','2022-11-15'),
('nn','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-schematron','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/sttr-imtr/','','2022-11-15'),
('nn','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-DMN','https://iplo.nl/digitaal-stelsel/aansluiten/standaarden/sttr-imtr/','','2022-11-15');

insert into ReleaseDependencies(itemid,dependsonitem) values
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-specificatie/1.4.2'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-specificatie/1.4.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-inEA/1.0.8'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-XSD/1.0'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-voorbeelden/1.4.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-schematron/nn'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-DNM/nn');


