.phony: website

all: DependencyGraph.gdf DependencyGraph.svg docs/index.md ci.json

#
# A gdf file can be opened by a graph visualiation tool.
# 
DependencyGraph.gdf: ConfiguratieItems.sqlite sqlite2gdf.sql
	sqlite3 ConfiguratieItems.sqlite < sqlite2gdf.sql > DependencyGraph.gdf

#
# This generates the website
# 
website: Makefile CreateWebsite.py ConfiguratieItems.sqlite
	./CreateWebsite.py 

#
# This is a start at making an export in JSON.
#
ci.json: CreateJson.py Makefile
	./CreateJson.py  > ci.json

#
# dot files for graphviz.
#
DependencyGraph.dot: CreateDot.py Makefile
	./CreateDot.py  > DependencyGraph.dot
	cat DependencyGraph.dot | dot -Kdot -Tsvg -Nfontcolor=red -Nshape=rect > DependencyGraph.svg


config-koop:
	sqlite3 ConfiguratieItems.sqlite < RunKOOP.sql
config-rws:
	sqlite3 ConfiguratieItems.sqlite < RunRWS.sql
config-geonovum:
	sqlite3 ConfiguratieItems.sqlite < RunGeonovum.sql


#
# Create initial state from sql dumps.
#
create:
	sqlite3 ConfiguratieItems.sqlite < create.sql
	cat data/BeheerItems.sql  | sqlite3 ConfiguratieItems.sqlite
	cat data/TPOD.sql | sqlite3 ConfiguratieItems.sqlite
	cat data/sttr-stam-releases.sql | sqlite3 ConfiguratieItems.sqlite
	cat data/tpod-repo.sql | sqlite3 ConfiguratieItems.sqlite
	cat data/functionality.sql | sqlite3 ConfiguratieItems.sqlite

clean:
	rm -f DependencyGraph.gdf
	rm -f docs/Geonovum/*/*md
	rm -f DependencyGraph.svg
	rm -rf ci.json
