--
-- STAM van 2022-07-18
--
insert into Releases(versienummer,itemid,downloaduri,status,releasedatum) values
('2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM','download','','2022-07-18'),
('2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM','download','','2022-07-18'),
('2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM-in-EA','download','','2022-07-18'),
('2.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-XSD','download','','2022-07-18'),
('2.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-Voorbeelden','download','','2022-07-18');

insert into ReleaseDependencies(itemid,dependsonitem) values
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM/2.0.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM-in-EA/2.0.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-XSD/2.0.0'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.0.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAN-Voorbeelden/2.0.0');

--
-- STAM van 2022-11-15
--
insert into Releases(versienummer,itemid,downloaduri,status,releasedatum) values
('2.1.0-rc','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM','download','','2022-11-15'),
('3.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM','download','','2022-11-15'),
('2.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/XSD-verzoeknotificatie','download','','2022-11-15'),
('3.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/XSD-verzoekbericht','download','','2022-11-15'),
('3.0.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-Voorbeelden','download','','2022-11-15');

insert into ReleaseDependencies(itemid,dependsonitem) values
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.1.0-rc','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM/2.0.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.1.0-rc','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMAM-in-EA/2.0.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.1.0-rc','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM-XSD/2.0.0'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAM/2.1.0-rc','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STAN-Voorbeelden/2.0.0');

--
-- STTR van 2022-09-30
--
insert into Releases(versienummer,itemid,downloaduri,status,releasedatum) values
('1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR','download','','2022-09-30'),
('1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-specificatie','download','','2022-09-30'),
('1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-specificatie','download','','2022-09-30'),
('1.0.8','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-in-EA','download','','2022-09-30'),
('1.0','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-XSD','download','','2022-09-30'),
('nn','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-Voorbeelden','download','','2022-09-30');

insert into ReleaseDependencies(itemid,dependsonitem) values
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-specificatie/1.4.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-specificatie/1.4.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-inEA/1.0.8'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-XSD/1.0'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-voorbeeldbestanden/nn');

--
-- STTR van 2022-11-15
--
insert into Releases(versienummer,itemid,downloaduri,status,releasedatum) values
('1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR','download','','2022-11-15'),
('1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-specificatie','download','','2022-11-15'),
('1.4.1','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-Voorbeelden','download','','2022-11-15'),
('nn','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-Schematron','download','','2022-11-15'),
('nn','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-DNM','download','','2022-11-15');

insert into ReleaseDependencies(itemid,dependsonitem) values
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-specificatie/1.4.2'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-specificatie/1.4.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-inEA/1.0.8'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/IMTR-XSD/1.0'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-Voorbeelden/1.4.1'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-Schematron/nn'),
('https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR/1.4.2','https://geonovum.github.io/dso-configuratiemanagement/ci/RWS/STTR-DNM/nn');


