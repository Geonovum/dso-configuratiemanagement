.phony: website

all: DependencyGraph.gdf DependencyGraph.svg release.md  docs/index.md ci.json

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

#
# Create initial state from sql dumps.
#
create:
	sqlite3 ConfiguratieItems.sqlite < create.sql
	cat data/*sql | sqlite3 ConfiguratieItems.sqlite 

clean:
	rm -f DependencyGraph.gdf
	rm -f docs/Geonovum/*/*md
	rm -f DependencyGraph.svg
	rm -rf ci.json
