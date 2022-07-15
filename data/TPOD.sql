insert into ReleasesBase(itemid,label,versienummer,downloaduri,releasedatum,status) VALUES
    ('Geonovum/TPOD','A-tripelaccent','0.1.0-todo','https://www.geonovum.nl/geo-standaarden/omgevingswet/STOPTPOD','2019-07-10','definitief');


INSERT INTO ReleaseDependencies(itemid,dependsonitem) values
('Geonovum/TPOD/0.1.0-todo','Geonovum/IMOW/2.0.1'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/IMOW-XSD/2.0.0'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/TPOD-AMvB/2.0.1'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/TPOD-omgevingspan/2.1.0'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/TPOD-waterschapsverordening/2.0.1'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/TPOD-projectbesluit/2.0.1'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/TPOD-omgevingsvisie/2.0.1'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/Beheertool-waardelijsten/2.0.1'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/TPOD-reactieve-interventie/2.0.1'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/TPOD-voorbereidingsbesluit/2.0.1'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/TPOD-programma/2.0.1'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/Beheertool-waardelijsten/1.0.0'),
('Geonovum/TPOD/0.1.0-todo','Beheertool-waardelijsten/1.1.0'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/TPOD-kennisgeving/1.1.0'),
('Geonovum/TPOD/0.1.0-todo','Geonovum/TPOD-omgevingsverordening/2.0.1');
