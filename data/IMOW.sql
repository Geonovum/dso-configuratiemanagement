delete from ReleasesBase where itemid in ('IMOW','XSD-IMOW');

insert into ReleasesBase(itemid,label,versienummer,downloaduri,releasedatum,status) VALUES
	('XSD-IMOW',NULL,'0.98-beta','https://github.com/Geonovum/TPOD/tree/master/CIMOW/IMOW%20XSD%20v0.98-beta','2019-07-10','beta'),
	('XSD-IMOW',NULL,'0.98-kern','https://github.com/Geonovum/TPOD/tree/master/CIMOW/IMOW%20XSD%20v0.98-kern','2019-09-10','definitief'),
	('CIMOW',NULL,'0.98-kern','https://github.com/Geonovum/TPOD/blob/master/CIMOW/CIMOW%20v0.98-kern.pdf','2019-09-10','definitief'),
	('IMOW',NULL,'2.0.0','https://github.com/Geonovum/TPOD/blob/master/CIMOW/IMOW_v2.0.0.pdf','2021-09-02','definitief'),
	('IMOW',NULL,'2.0.1-rc','https://github.com/Geonovum/TPOD/blob/master/CIMOW/IMOW_v2.0.1-rc.pdf','2021-12-16','release-candidate'),
	('IMOW',NULL,'2.0.1','https://github.com/Geonovum/TPOD/blob/master/CIMOW/IMOW_v2.0.1.pdf','2022-01-07','definitief')
;
