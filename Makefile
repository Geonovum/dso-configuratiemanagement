#
# A gdf file can be opened by a graph visualiation tool.
# 
all: DependencyGraph.gdf release.md

DependencyGraph.gdf: ConfiguratieItems.sqlite MakeDependencyGraph.sql
	sqlite3 ConfiguratieItems.sqlite < MakeDependencyGraph.sql > DependencyGraph.gdf

release.md: ConfiguratieItems.sqlite Makefile MakeRelease.sql
	sqlite3 ConfiguratieItems.sqlite < MakeRelease.sql > release.md


clean:
	rm -f DependencyGraph.gdf
	rm -f release.md
