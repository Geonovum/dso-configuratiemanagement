delete from ReleasesBase where itemid = 'TPOD';
insert into ReleasesBase(itemid,label,versienummer,downloaduri,releasedatum,status) VALUES
    ('TPOD','A-tripelaccent','TPOD/0.1.0-todo','https://www.geonovum.nl/geo-standaarden/omgevingswet/STOPTPOD','2019-07-10','definitief');

DELETE FROM ReleaseDependencies
where itemid like 'TPOD/%';

INSERT INTO ReleaseDependencies(itemid,dependsonitem) values
('TPOD/0.1.0-todo','IMOW/2.0.1'),
('TPOD/0.1.0-todo','IMOW-XSD/2.0.0'),
('TPOD/0.1.0-todo','TPOD-AMvB/2.0.1'),
('TPOD/0.1.0-todo','TPOD-omgevingspan/2.1.0'),
('TPOD/0.1.0-todo','TPOD-waterschapsverordening/2.0.1'),
('TPOD/0.1.0-todo','TPOD-projectbesluit/2.0.1'),
('TPOD/0.1.0-todo','TPOD-omgevingsvisie/2.0.1'),
('TPOD/0.1.0-todo','Beheertool-waardelijsten/2.0.1'),
('TPOD/0.1.0-todo','TPOD-reactieve-interventie/2.0.1'),
('TPOD/0.1.0-todo','TPOD-voorbereidingsbesluit/2.0.1'),
('TPOD/0.1.0-todo','TPOD-programma/2.0.1'),
('TPOD/0.1.0-todo','Beheertool-waardelijsten/1.0.0'),
('TPOD/0.1.0-todo','Beheertool-waardelijsten/1.1.0'),
('TPOD/0.1.0-todo','TPOD-kennisgeving/1.1.0'),
('TPOD/0.1.0-todo','TPOD-omgevingsverordening/2.0.1');
