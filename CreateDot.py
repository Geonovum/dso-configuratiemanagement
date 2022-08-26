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
# Start dot file.
#
print('strict digraph {')

#
#  Make a separate page for each beheerItem.
#
cur3 = con.cursor()
for row in cur3.execute('SELECT id, naam, omschrijving, organisatie, intern, releaselocatie, type FROM Beheeritems where intern == 0 and organisatie = "Geonovum" order by naam'):
    ide,naam,omschrijving,organisatie,internx,releaselocatie,typex = row


    print('"' + ide + '" [ label="' + naam + ' "];')
    #
    # Query DBMS and find dependent package.
    #
    dependencies = [];
    cur = con.cursor()
    for dep in cur.execute('SELECT itemid,dependsonitem FROM BeheeritemDependencies where itemid = "' + ide + '"'):
        itemid,dependson = dep;
        print('"' + itemid + '" -> "' + dependson + '";')
        dependencies.append(dependson);

    #
    # Find and print all releases of this ci.
    #
    print('subgraph "' + ide + '" {')
    rcur = con.cursor()
    for release in rcur.execute('SELECT id,itemid,versienummer,label,downloaduri,releasedatum FROM Releases where itemid = "' + ide + '" order by releasedatum,versienummer'):
        rident,ritemid,rversienummer,rlabel,rdownloaduri,rreleasedatum = release
        rreleaseid = ritemid + '/' + rversienummer


        rddependencies = [];
        curdep = con.cursor()
        for rdep in curdep.execute('SELECT itemid,dependsonitem FROM ReleaseDependencies where itemid = "' + rreleaseid + '"'):
            rditemid,rddependson = rdep;
            rddependencies.append(rddependson);

        print('"' + rreleaseid + '" -> "' + ide + '";')
    print('}')
print('}')
