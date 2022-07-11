#
# A gdf file can be opened by a graph visualiation tool.
# 
create:
	sqlite3 ConfiguratieItems.sqlite < create.sql
load:
	cat data/*sql | sqlite3 ConfiguratieItems.sqlite 

all: DependencyGraph.gdf release.md web/index.html configuratieitems.md

DependencyGraph.gdf: ConfiguratieItems.sqlite MakeDependencyGraph.sql
	sqlite3 ConfiguratieItems.sqlite < MakeDependencyGraph.sql > DependencyGraph.gdf

release.md: ConfiguratieItems.sqlite Makefile printreleases.py
	./printreleases.py > release.md

configuratieitems.md: Makefile printconfigurationitems.py ConfiguratieItems.sqlite
	./printconfigurationitems.py > configuratieitems.md

web/index.html: release.md configuratieitems.md Makefile
	cat configuratieitems.md release.md | pandoc -s --css=style.css --metadata pagetitle="Configuratie Items" -f markdown -t html5 -o web/index.html

export:
	sqlite3 ConfiguratieItems.sqlite < export.sql

clean:
	rm -f DependencyGraph.gdf
	rm -f configuratieitems.md
	rm -f release.md
	rm -f web/index.html

