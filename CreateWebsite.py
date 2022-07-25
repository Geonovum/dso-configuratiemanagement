#!/usr/bin/python3
#
# Description: Python program to convert sqlite DBMS into website that shows geonovum configuration items.
#    This is just a proof of concept.
# Author: Wilko Quak (w.quak@geonovum.nl)
# Date: 2022-07-22 Initial workable version
#
import sqlite3
import sys
import os

#
# open database with configuratie items
#
con = sqlite3.connect('ConfiguratieItems.sqlite')


#
# Create main index page in markdown for deployment site. Currently it contains a list of
# all configuration items in the DBMS. Later this page gets convert to HTML.
#
indexfile = open("docs/index.md","wt")

indexfile.write("# Beheeritems van Geonovum\n\n")
indexfile.write("Proof of concept van overzicht van beheeritems van Geonovum\n\n")
indexfile.write ("|naam|type|\n")
indexfile.write ("|----|----|\n")
cur = con.cursor()
for row in cur.execute('SELECT id, naam, omschrijving, organisatie, intern, releaselocatie, type FROM Beheeritems where intern == 0 and organisatie = "Geonovum" order by naam'):
    ide,naam,omschrijving,organisatie,internx,releaselocatie,typex = row
    indexfile.write("|[" + naam + "](" + ide + ")|" + typex + "|\n")
indexfile.write('\n')
indexfile.close

#
#  Make a separate page for each beheerItem.
#
cur3 = con.cursor()
for row in cur3.execute('SELECT id, naam, omschrijving, organisatie, intern, releaselocatie, type FROM Beheeritems where intern == 0 and organisatie = "Geonovum" order by naam'):
    id,naam,omschrijving,organisatie,internx,releaselocatie,typex = row

    #
    # Query DBMS and find dependent package.
    #
    dependencies = [];
    cur = con.cursor()
    for dep in cur.execute('SELECT itemid,dependsonitem FROM BeheeritemDependencies where itemid = "' + id + '"'):
        itemid,dependson = dep;
        dependencies.append(dependson);
    #
    # Create folder for package and open file
    #
    outfolder = "docs/" + id
    if not os.path.exists(outfolder):
        os.makedirs(outfolder)
    sys.stderr.write("Writing to: " + outfolder + "\n")
    outfile = open(outfolder + "/index.md","wt")

    #
    # Print ci info.
    #
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

    #
    # Find and print all releases of this ci.
    #
    rcur = con.cursor()
    for release in rcur.execute('SELECT id,itemid,versienummer,label,downloaduri,releasedatum FROM Releases where itemid = "' + id + '" order by itemid,versienummer '):
        rident,ritemid,rversienummer,rlabel,rdownloaduri,rreleasedatum = release
        rreleaseid = ritemid + '/' + rversienummer

        rddependencies = [];
        curdep = con.cursor()
        for rdep in curdep.execute('SELECT itemid,dependsonitem FROM ReleaseDependencies where itemid = "' + rreleaseid + '"'):
            rditemid,rddependson = rdep;
            rddependencies.append(rddependson);

        outfile.write('| [' + rversienummer + '](<' + rdownloaduri + '>)|' + str(rreleasedatum) + '|' +  ", ".join(rddependencies)  + '|\n')
    outfile.write('\n')
    outfile.close()

