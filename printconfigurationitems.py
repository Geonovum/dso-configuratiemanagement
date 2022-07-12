#!/usr/bin/python3
import sqlite3
con = sqlite3.connect('ConfiguratieItems.sqlite')

print("# Beheerhitems van Geonovum")
print()


cur = con.cursor()
for row in cur.execute('SELECT id, naam, omschrijving, organisatie, intern, releaselocatie, type FROM Beheeritems order by naam'):
    id,naam,omschrijving,organisatie,internx,releaselocatie,typex = row

    print('## ' + naam )

    print('|value|waarde|')
    print('|-----|------|')
    print('| id  |' + id + '|');
    print('| omschrijving  |' + str(omschrijving) + '|');
    print('| organisatie  |' + str(organisatie) + '|');
    print('| releaselocatie  | [link](' + str(releaselocatie) + ')|');
    print('| intern  |' + str(internx) + '|');
    print('| type  |' + str(typex) + '|');
    print()
    
    first = 1
    cur = con.cursor()
    for dep in cur.execute('SELECT itemid,dependsonitem FROM BeheeritemDependencies where itemid = "' + id + '"'):
        itemid,dependson = dep;
        if (first == 1):
            first = 0
            print('Is afhankelijk van:')
            print()
            print('|packagid|')
            print('|--------|')
        print('|' + dependson + '|')



