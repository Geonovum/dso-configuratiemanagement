#!/usr/bin/python3
#
# Description:
#    Python program to convert sqlite DBMS into json This is just a proof of
#    concept. It is also possible to export JSON straight from SQL but I am
#    planning to experiment with json schema generated from UML and I might
#    need some extra control on the output.
#
# Author: Wilko Quak (w.quak@geonovum.nl)
# Date: 2022-08-26 Initial version that generates JSON, now figure out what kind of json.
#
import sqlite3
import sys
import os
import json

#
# open database with configuratie items
#
con = sqlite3.connect('ConfiguratieItems.sqlite')


firstitem = True
#
# Start dot file.
#
print('{ "Beheeritems" : [')

#
#  Make a separate page for each beheerItem.
#
cur3 = con.cursor()
for row in cur3.execute('SELECT id, naam, omschrijving, organisatie, intern, releaselocatie, type FROM Beheeritems where intern == 0 order by naam'):
    ide,naam,omschrijving,organisatie,internx,releaselocatie,typex = row
    if firstitem:
        firstitem = False;
    else:
        print (",")


    print('    {');
    #
    # Query DBMS and find dependent package.
    #
    dependencies = [];
    cur = con.cursor()
    for dep in cur.execute('SELECT itemid,dependsonitem FROM BeheeritemDependencies where itemid = "' + ide + '"'):
        itemid,dependson = dep;
        #print('"' + itemid + '" -> "' + dependson + '";')
        dependencies.append(dependson);
    #
    # Print ci info.
    #
    print('        "naam": ' + json.dumps(naam) + ',')
    print('        "releaselocatie": ' + json.dumps(releaselocatie) + ',')
    print('        "organisatie": ' + json.dumps(organisatie) + ',')
    print('        "type": ' + json.dumps(typex) + ',')
    print('        "omschrijving": ' + json.dumps(omschrijving) + ',')
    print('        "id": ' + json.dumps(ide))
    #if (len(dependencies) != 0):
        #outfile.write('|afhankelijk van |' + ", ".join(dependencies) + '|\n')

    print('    }')
print(']}')
