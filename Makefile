#
# A gdf file can be opened by a graph visualiation tool.
# 

all: DependencyGraph.gdf release.md docs/index.html docs/index.md

DependencyGraph.gdf: ConfiguratieItems.sqlite sqlite2gdf.sql
	sqlite3 ConfiguratieItems.sqlite < sqlite2gdf.sql > DependencyGraph.gdf

docs/index.md: Makefile CreateWebsite.py ConfiguratieItems.sqlite
	./CreateWebsite.py 

docs/index.html: release.md docs/index.md Makefile
	cat docs/index.md | pandoc -s --css=style.css --metadata pagetitle="Configuratie Items" -f markdown -t html5 -o docs/index.html

create:
	sqlite3 ConfiguratieItems.sqlite < create.sql
	cat data/*sql | sqlite3 ConfiguratieItems.sqlite 

clean:
	rm -f DependencyGraph.gdf
	rm -f configuratieitems.md
	rm -f docs/index.html
	rm -f docs/Geonovum/*md

