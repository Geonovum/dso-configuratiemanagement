.mode csv
.print nodedef>name VARCHAR,label VARCHAR,description VARCHAR,party VARCHAR,intern VARCHAR
select * from ConfiguratieItem;
.print edgedef>node1 VARCHAR,node2 VARCHAR
select * from ConfiguratieItemAfhankelijkheid;
