DROP TABLE if exists BeheerItemsBase;
CREATE TABLE BeheerItemsBase 
( 
        id TEXT NOT NULL, 
        naam TEXT, 
        omschrijving TEXT,
        organisatie TEXT NOT NULL,
        intern INTEGER NOT NULL DEFAULT 0, 
        releaselocatie TEXT,
        type TEXT,
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

DROP TABLE if exists Releases;
CREATE TABLE Releases
(
		itemid TEXT not NULL,
		label TEXT,
		versienummer TEXT not null,
		downloaduri TEXT,
		releasedatum DATE,
		status TEXT,
		primary key (itemid,versienummer),
		foreign key (itemid) references BeheerItems(uri)
);

DROP TABLE if exists ReleaseDependencies;
CREATE TABLE ReleaseDependencies
(
        itemid TEXT NOT NULL,
        dependsonitem TEXT NOT NULL,
	foreign key (itemid) references Releases(id)
	foreign key (dependsonitem) references Releases(id)
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
	('RWS','https://geonovum.github.io/dso-configuratiemanagement/','https://www.rijkswaterstaat.nl/',false)
;
