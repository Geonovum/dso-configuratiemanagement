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

#
# Write YAML
#
indexfile.write("---\n")
indexfile.write("title: Configuratieitems\n")
indexfile.write("---\n")

#
# Document titel
#
#indexfile.write("# Beheeritems in dit repository\n")
#indexfile.write("\n")

#
# Document inhoud
#
indexfile.write("Proof of concept van overzicht van beheeritems binnen het DSO.\n")
indexfile.write("\n")
indexfile.write ("|Naam|Organisatie|Type|Laatste release|\n")
indexfile.write ("|----|-----------|----|------------|\n")

#
#  Dit is de sql query die alle beheeritems ophaalt.
#
getAllBeheeritems = '''
SELECT uri,id, naam, omschrijving, organisatie, intern, releaselocatie, type 
FROM Beheeritems
where intern == 0 and local == 1
order by type,organisatie,naam
'''


beheeritemscursor = con.cursor()
for row in beheeritemscursor.execute(getAllBeheeritems):
    uri,ide,naam,omschrijving,organisatie,internx,releaselocatie,typex = row

    sys.stderr.write("Processing: " + uri + "\n")
    #
    # Query DBMS and find dependent package.
    #
    dependencies = [];
    cur = con.cursor()
    for dep in cur.execute('SELECT bd.itemid,bd.dependsonitem,b.naam FROM BeheeritemDependencies bd join BeheerItems b on (bd.dependsonitem = b.uri) where bd.itemid = "' + uri + '"'):
        itemid,dependson,bgnaam = dep;
        dependencies.append("[" + bgnaam + "](" + dependson + ")");
    #
    # Create folder for package and open file
    #
    outfolder = "docs/ci/" + organisatie + '/' + ide
    if not os.path.exists(outfolder):
        os.makedirs(outfolder)
    sys.stderr.write("Writing to: " + outfolder + "\n")
    outfile = open(outfolder + "/index.md","wt")

    #
    # Print ci info.
    #
    outfile.write("---\n")
    outfile.write("title: " + naam + "\n")
    outfile.write("---\n")
    outfile.write("\n")

    outfile.write('|element|waarde|\n')
    outfile.write('|-----|------|\n')
    outfile.write('| naam  |' + str(naam) + '|\n')
    outfile.write('| omschrijving  |' + str(omschrijving) + '|\n')
    outfile.write('| organisatie  |' + str(organisatie) + '|\n')
    outfile.write('| download  | [' + str(releaselocatie) + '](' + str(releaselocatie) + ')|\n')
    outfile.write('| type  |' + str(typex) + '|\n')
    outfile.write('| id  |' + ide + '|\n')
    if (len(dependencies) != 0):
        outfile.write('| Gebruikt|' + ", ".join(dependencies) + '|\n')


    #
    # Find and print all releases of this ci.
    #
    lastrelease = '';
    rcur = con.cursor()
    for release in rcur.execute('SELECT itemid,versienummer,label,downloaduri,releasedatum FROM Releases where itemid = "' + uri + '" order by releasedatum,versienummer'):
        ritemid,rversienummer,rlabel,rdownloaduri,rreleasedatum = release
        rreleaseid = ritemid + '/' + rversienummer
        
        if lastrelease == '':
            outfile.write('\n')
            outfile.write('## Releases\n\n')
            outfile.write('|Versienummer|Datum release|Hangt af van\n')
            outfile.write('|-------|-------|-----|\n')

        rddependencies = [];
        curdep = con.cursor()
        for rdep in curdep.execute('SELECT rd.itemid,rd.dependsonitem FROM ReleaseDependencies rd  where rd.itemid = "' + rreleaseid + '"'):
            rditemid,rddependson = rdep;
            rddependencies.append('[' + rddependson + '](' + rddependson + ') ');

        outfile.write('| [' + rversienummer + '](<' + rdownloaduri + '>)|' + str(rreleasedatum) + '|' +  ", ".join(rddependencies)  + '|\n')
        lastrelease = rversienummer
    outfile.write('\n')
    outfile.close()

    indexfile.write("|[" + naam + "](" + uri + ")|" + organisatie + "|" + typex + "|" + lastrelease  +"\n")

indexfile.write('\n')
indexfile.close

#
# Create main index page in markdown for deployment site. Currently it contains a list of
# all configuration items in the DBMS. Later this page gets convert to HTML.
#
funcfile = open("docs/functionality/index.md","wt")

#
# Write YAML
#
funcfile.write("---\n")
funcfile.write("title: Functionalities\n")
funcfile.write("---\n")
#
# Document inhoud
#
funcfile.write("Proof of concept van overzicht van functionaliteiten binnen het DSO.\n")
funcfile.write("\n")
funcfile.write ("|id |naam|\n")
funcfile.write ("|---|----|\n")

#
#  Dit is de sql query die alle functionaliteiten ophaalt.
#
getAllFunctionalities = '''
SELECT id,naam,omschrijving
FROM Functionalities
order by naam
'''


functionalitiescursor = con.cursor()
for row in functionalitiescursor.execute(getAllFunctionalities):
    id,naam,omschrijving = row

    sys.stderr.write("Processing: " + id + "\n")
    funcfile.write ("|[{}]({})|{}|\n".format(id,id,naam))

    #
    # Create folder for package and open file
    #
    outfolder = "docs/functionality/" + id
    if not os.path.exists(outfolder):
        os.makedirs(outfolder)
    sys.stderr.write("Writing to: " + outfolder + "\n")
    outfile = open(outfolder + "/index.md","wt")

    #
    # Print ci info.
    #
    outfile.write("---\n")
    outfile.write("title: " + naam + "\n")
    outfile.write("---\n")
    outfile.write("\n")

    outfile.write('|element|waarde|\n')
    outfile.write('|-----|------|\n')
    outfile.write('| naam  |' + str(naam) + '|\n')
    outfile.write('| omschrijving  |' + str(omschrijving) + '|\n')

    outfile.write('\n')
    outfile.close()
