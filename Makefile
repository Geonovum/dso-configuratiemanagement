STYLEFILE=https://geonovum.github.io/dso-configuratiemanagement/style.css

#
# A gdf file can be opened by a graph visualiation tool.
# 

all: DependencyGraph.gdf DependencyGraph.svg release.md docs/index.html docs/index.md ci.json

DependencyGraph.gdf: ConfiguratieItems.sqlite sqlite2gdf.sql
	sqlite3 ConfiguratieItems.sqlite < sqlite2gdf.sql > DependencyGraph.gdf

docs/index.md: Makefile CreateWebsite.py ConfiguratieItems.sqlite
	./CreateWebsite.py 

ci.json: CreateJson.py Makefile
	./CreateJson.py  > ci.json

DependencyGraph.dot: CreateDot.py Makefile
	./CreateDot.py  > DependencyGraph.dot
	cat DependencyGraph.dot | dot -Kdot -Tsvg -Nfontcolor=red -Nshape=rect > DependencyGraph.svg

create:
	sqlite3 ConfiguratieItems.sqlite < create.sql
	cat data/*sql | sqlite3 ConfiguratieItems.sqlite 

docs/index.html: docs/index.md
	find docs -name \*.md | sed 's/.md//' | xargs -I XX -n 1 pandoc -s --css=${STYLEFILE} --metadata pagetitle=\"XX\" -f markdown -t html5 -o XX.html XX.md

clean:
	rm -f DependencyGraph.gdf
	rm -f docs/index.md
	rm -f docs/Geonovum/*/*md
	rm -f DependencyGraph.svg
	rm -rf ci.json
