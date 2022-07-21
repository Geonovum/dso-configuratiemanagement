#!/usr/bin/python3
#
# Python program to convert sqlite DBMS into website that shows geonovum configuration items.
# This is just a proof of concept.
#   Author: Wilko Quak (w.quak@geonovum.nl)
#
import sqlite3
import sys
import os
con = sqlite3.connect('ConfiguratieItems.sqlite')
cur = con.cursor()


#
# Print an overview pf all BeheerItems owned by Geonovum
#
indexfile = open("docs/index.md","wt")

indexfile.write("# Beheeritems van Geonovum\n\n")
indexfile.write ("|naam|type|\n")
indexfile.write ("|----|----|\n")
for row in cur.execute('SELECT id, naam, omschrijving, organisatie, intern, releaselocatie, type FROM Beheeritems where intern == 0 and organisatie = "Geonovum" order by naam'):
    ide,naam,omschrijving,organisatie,internx,releaselocatie,typex = row
    indexfile.write("|[" + naam + "](" + ide + ")|" + typex + "|\n")
indexfile.write('\n')
indexfile.close

#
#  Make a separate page for each beheerItem.
#
for row in cur.execute('SELECT id, naam, omschrijving, organisatie, intern, releaselocatie, type FROM Beheeritems where intern == 0 and organisatie = "Geonovum" order by naam'):
    id,naam,omschrijving,organisatie,internx,releaselocatie,typex = row

    outfolder = "docs/" + id + ""
    sys.stderr.write("outfile = " + outfolder + "/index.md\n");
    if not os.path.exists(outfolder):
        os.makedirs(outfolder)
    outfile = open(outfolder + "/index.md","wt")


    dependencies = [];
    cur = con.cursor()
    for dep in cur.execute('SELECT itemid,dependsonitem FROM BeheeritemDependencies where itemid = "' + id + '"'):
        itemid,dependson = dep;
        dependencies.append(dependson);

    outfile.write('# ' + naam + '\n')
    outfile.write("\n")
    outfile.write(str(omschrijving) + '\n\n')

    outfile.write('## ' + naam + '\n\n' )

    outfile.write('|value|waarde|\n')
    outfile.write('|-----|------|\n')
    outfile.write('| download  | [' + str(releaselocatie) + '](<' + str(releaselocatie) + '>)|\n')
    outfile.write('| organisatie  |' + str(organisatie) + '|\n')
    outfile.write('| type  |' + str(typex) + '|\n')
    outfile.write('| id  |' + id + '|\n')
    if (len(dependencies) != 0):
        outfile.write('|afhankelijk van |' + ", ".join(dependencies) + '|\n')

    outfile.write('\n')
    outfile.write('## Releases\n\n')
    outfile.write('|versienummer|releasedate|dependencies\n')
    outfile.write('|-------|-------|-----|\n')
    rcur = con.cursor()
    for release in rcur.execute('SELECT id,itemid,versienummer,label,downloaduri,releasedatum FROM Releases where itemid = "' + id + '" order by itemid,versienummer '):
        rident,ritemid,rversienummer,rlabel,rdownloaduri,rreleasedatum = release
        rreleaseid = ritemid + '/' + rversienummer

        rddependencies = [];
        rdep = con.cursor()
        for rdep in cur.execute('SELECT itemid,dependsonitem FROM ReleaseDependencies where itemid = "' + rreleaseid + '"'):
            rditemid,rddependson = rdep;
            rddependencies.append(rddependson);

        outfile.write('| [' + rversienummer + '](<' + rdownloaduri + '>)|' + str(rreleasedatum) + '|' +  ", ".join(rddependencies)  + '|\n')
    outfile.write('\n')
    outfile.close()

