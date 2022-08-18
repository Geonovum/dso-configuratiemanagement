insert into ReleasesBase(itemid,label,versienummer,downloaduri,releasedatum,status) VALUES
    ('ci/Geonovum/TPOD','A-tripelaccent','0.1.0-todo','https://www.geonovum.nl/geo-standaarden/omgevingswet/STOPTPOD','2019-07-10','definitief');


INSERT INTO ReleaseDependencies(itemid,dependsonitem) values
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/IMOW/2.0.1'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/IMOW-XSD/2.0.0'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/TPOD-AMvB/2.0.1'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/TPOD-omgevingspan/2.1.0'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/TPOD-waterschapsverordening/2.0.1'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/TPOD-projectbesluit/2.0.1'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/TPOD-omgevingsvisie/2.0.1'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/Beheertool-waardelijsten/2.0.1'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/TPOD-reactieve-interventie/2.0.1'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/TPOD-voorbereidingsbesluit/2.0.1'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/TPOD-programma/2.0.1'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/Beheertool-waardelijsten/1.1.0'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/TPOD-kennisgeving/1.1.0'),
('release/Geonovum/TPOD/0.1.0-todo','release/Geonovum/TPOD-omgevingsverordening/2.0.1');
