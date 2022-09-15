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

indexfile.write("# Beheeritems in dit repository\n")
indexfile.write("Proof of concept van overzicht van beheeritems binnen het DSO.\n")
indexfile.write("\n")
indexfile.write ("|Naam|Organisatie|type|laatste release|\n")
indexfile.write ("|----|-----------|----|------------|\n")

#
#  Make a separate page for each beheerItem.
#
beheeritemscursor = con.cursor()
for row in beheeritemscursor.execute('SELECT id, naam, omschrijving, organisatie, intern, releaselocatie, type FROM Beheeritems where intern == 0 order by organisatie,naam'):
    ide,naam,omschrijving,organisatie,internx,releaselocatie,typex = row


    #
    # Query DBMS and find dependent package.
    #
    dependencies = [];
    cur = con.cursor()
    for dep in cur.execute('SELECT itemid,dependsonitem FROM BeheeritemDependencies where itemid = "' + ide + '"'):
        itemid,dependson = dep;
        dependencies.append(dependson);
    #
    # Create folder for package and open file
    #
    outfolder = "docs/" + ide
    if not os.path.exists(outfolder):
        os.makedirs(outfolder)
    sys.stderr.write("Writing to: " + outfolder + "\n")
    outfile = open(outfolder + "/index.md","wt")

    #
    # Print ci info.
    #
    outfile.write('# ' + naam + '\n')
    outfile.write("\n")

    outfile.write('|element|waarde|\n')
    outfile.write('|-----|------|\n')
    outfile.write('| organisatie  |' + str(organisatie) + '|\n')
    outfile.write('| download  | [' + str(releaselocatie) + '](<' + str(releaselocatie) + '>)|\n')
    outfile.write('| type  |' + str(typex) + '|\n')
    outfile.write('| id  |' + ide + '|\n')
    outfile.write('| omschrijving  |' + str(omschrijving) + '|\n')
    if (len(dependencies) != 0):
        outfile.write('|afhankelijk van |' + ", ".join(dependencies) + '|\n')

    outfile.write('\n')
    outfile.write('## Releases\n\n')
    outfile.write('|Versienummer|Datum release|Hangt af van\n')
    outfile.write('|-------|-------|-----|\n')

    #
    # Find and print all releases of this ci.
    #
    lastrelease = '';
    rcur = con.cursor()
    for release in rcur.execute('SELECT id,itemid,versienummer,label,downloaduri,releasedatum FROM Releases where itemid = "' + ide + '" order by releasedatum,versienummer'):
        rident,ritemid,rversienummer,rlabel,rdownloaduri,rreleasedatum = release
        rreleaseid = ritemid + '/' + rversienummer

        rddependencies = [];
        curdep = con.cursor()
        for rdep in curdep.execute('SELECT itemid,dependsonitem FROM ReleaseDependencies where itemid = "' + rreleaseid + '"'):
            rditemid,rddependson = rdep;
            rddependencies.append(rddependson);

        outfile.write('| [' + rversienummer + '](<' + rdownloaduri + '>)|' + str(rreleasedatum) + '|' +  ", ".join(rddependencies)  + '|\n')
        lastrelease = rversienummer
    outfile.write('\n')
    outfile.close()

    indexfile.write("|[" + naam + "](" + ide + ")|" + organisatie + "|" + typex + "|" + lastrelease  +"\n")

indexfile.write('\n')
indexfile.close
