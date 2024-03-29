DROP TABLE if exists BeheerItemsBase;
CREATE TABLE BeheerItemsBase 
( 
        id TEXT NOT NULL, 			-- Unieke identificatie van het beheeritem binnen de organisatie.
        naam TEXT, 				-- Mens-leesbare beschrijven te gebruiken als label.
        omschrijving TEXT,			-- Iets langere omschrijving.
        organisatie TEXT NOT NULL,		-- Identificatie van de organisatie. Wordt gebruikt om URI te construeren.
        intern INTEGER NOT NULL DEFAULT 0, 	-- Interne beheeritems komen niet op de website.
        releaselocatie TEXT,			-- URL waar je de releases kunt vinden.
        type TEXT,				-- Categorisatie. (Standaard,Beheergrep,Voorbeeldbestand,...)
        PRIMARY KEY(organisatie,id)
);

DROP VIEW if exists BeheerItems;
CREATE VIEW BeheerItems
AS
   SELECT baseuri || 'ci/' || BeheerItemsBase.organisatie || '/' || BeheerItemsBase.id as uri, *
   FROM BeheerItemsBase,Organisaties
   WHERE BeheerItemsBase.organisatie = Organisaties.id;

DROP TABLE if exists BeheerItemDependenciesBase;
CREATE TABLE BeheerItemDependenciesBase
(
        itemorganisatie TEXT NOT NULL,
        itemid TEXT NOT NULL,
        dependsonorganisatie TEXT NOT NULL,
        dependsonid TEXT NOT NULL,
	primary key(itemorganisatie,itemid,dependsonorganisatie,dependsonid),
	foreign key (dependsonorganisatie,dependsonid) REFERENCES BeheerItems(organisatie,id),
	foreign key (itemorganisatie,itemid) REFERENCES BeheerItems(organisatie,id)
);

drop view if exists BeheerItemDependencies;
create view BeheerItemDependencies
as
   select 
      itemo.baseuri || 'ci/' || itemo.id || '/' || base.itemid as itemid,
      dependo.baseuri || 'ci/' || dependo.id || '/' || base.dependsonid as dependsonitem
   from
      BeheerItemDependenciesBase as base, Organisaties as itemo, Organisaties as dependo
   where
      base.itemorganisatie = itemo.id and base.dependsonorganisatie = dependo.id;

DROP TABLE if exists ReleasesBase;
CREATE TABLE ReleasesBase
(
		organisatie TEXT not null,		-- De organisatie die de release doet
		ci TEXT not null,			-- Het gereleasede configuratieitem
		label TEXT,
		versienummer TEXT not null,		-- Het versienummer van het gereleasde ding.
		downloaduri TEXT,			-- Waar kun je het ding downloaden?
		releasedatum DATE,			-- Wanneer was de release?
		status TEXT,
		primary key (organisatie,ci,versienummer)
		--foreign key (itemid) references BeheerItems(uri)
);

DROP view if exists Releases;
CREATE view Releases
as
select
   o.baseuri || 'ci/' || rb.organisatie || '/' ||  rb.ci as itemid,
   rb.*
from ReleasesBase rb join Organisaties o on (rb.organisatie = o.id);
;

DROP TABLE if exists ReleaseDependencies;
CREATE TABLE ReleaseDependencies
(
        itemid TEXT NOT NULL,
        dependsonitem TEXT NOT NULL,
	foreign key (itemid) references Releases(id)
	foreign key (dependsonitem) references Releases(id)
);

drop table if exists ReleaseImplementsFunctionality;
create table ReleaseImplementsFunctionality
(
    releaseid text not null,
    functionalityid txt not null
);


DROP TABLE if exists Organisaties;
CREATE TABLE Organisaties
(
        id TEXT NOT NULL PRIMARY KEY,	-- Identificatie van de organisatie.
        baseuri TEXT NOT NULL,		-- Prefix die gebruikt wordt om CI's van deze organisatie te identificeren.
	website TEXT NOT NULL,		-- Verwijzing naar website van organisatie.
	local INTEGER NOT NULL		-- True: CI's van deze organisatie worden lokaal gepubliceerd anders False
);

insert into Organisaties(id,baseuri,website,local) values 
	('Geonovum','https://geonovum.github.io/dso-configuratiemanagement/','https://www.geonovum.nl/',true),
	('KOOP','https://geonovum.github.io/dso-configuratiemanagement-koop/','https://www.koopoverheid.nl/',false),
	('RWS','https://geonovum.github.io/dso-configuratiemanagement-rws/','https://www.rijkswaterstaat.nl/',false)
;
