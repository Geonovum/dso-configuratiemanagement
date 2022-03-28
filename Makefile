#
# A gdf file can be opened by a graph visualiation tool.
# 
all: DependencyGraph.gdf release.md web/index.html configuratieitems.md

DependencyGraph.gdf: ConfiguratieItems.sqlite MakeDependencyGraph.sql
	sqlite3 ConfiguratieItems.sqlite < MakeDependencyGraph.sql > DependencyGraph.gdf

release.md: ConfiguratieItems.sqlite Makefile printreleases.py
	./printreleases.py > release.md

configuratieitems.md: Makefile printconfigurationitems.sql
	sqlite3 ConfiguratieItems.sqlite < printconfigurationitems.sql > configuratieitems.md

web/index.html: release.md configuratieitems.md Makefile
	cat configuratieitems.md release.md | pandoc -s --css=style.css --metadata pagetitle="Configuratie Items" -f markdown -t html5 -o web/index.html


clean:
	rm -f DependencyGraph.gdf
	rm -f configuratieitems.md
	rm -f release.md
	rm -f web/index.html

