DROP TABLE if exists Beheeritems;
CREATE TABLE Beheeritems 
( 
        id TEXT NOT NULL, 
        naam TEXT, 
        omschrijving TEXT,
        organisatie TEXT NOT NULL,
        intern INTEGER NOT NULL DEFAULT 0, 
        releaselocatie TEXT,
        type TEXT,
        PRIMARY KEY("id")
);

DROP TABLE if exists BeheeritemDependencies;
CREATE TABLE BeheeritemDependencies
(
        itemid TEXT NOT NULL,
        dependsonitem TEXT NOT NULL,
	primary key(itemid,dependsonitem),
	foreign key (dependsonitem) REFERENCES Beheeritems(id),
	foreign key (itemid) REFERENCES Beheeritems(id)
);

DROP TABLE if exists ReleasesBase;
CREATE TABLE ReleasesBase
(
		itemid TEXT not NULL,
		label TEXT,
		versienummer TEXT not null,
		downloaduri TEXT,
		releasedatum DATE,
		status TEXT,
		primary key (itemid,versienummer),
		foreign key (itemid) references Beheeritems(id)

);

DROP VIEW if exists Releases;
CREATE VIEW Releases
AS
   SELECT itemid || '/' || versienummer as id,* 
   FROM ReleasesBase;

DROP TABLE if exists ReleaseDependencies;
CREATE TABLE ReleaseDependencies
(
        itemid TEXT NOT NULL,
        dependsonitem TEXT NOT NULL,
	foreign key (itemid) references Releases(id)
	foreign key (dependsonitem) references Releases(id)
);

