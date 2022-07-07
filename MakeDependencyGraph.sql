.mode csv
.print nodedef>name VARCHAR,label VARCHAR,description VARCHAR,party VARCHAR,intern VARCHAR
select id,naam,omschrijving,organisatie,intern from BeheerItems;
.print edgedef>node1 VARCHAR,node2 VARCHAR
select itemid,dependsonitem from BeheerItemDependencies;
