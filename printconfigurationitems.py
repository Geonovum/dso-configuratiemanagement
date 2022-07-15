#!/usr/bin/python3
import sqlite3
con = sqlite3.connect('ConfiguratieItems.sqlite')
cur = con.cursor()

print("# Beheeritems van Geonovum")
print()

print ("|naam|type|")
print ("|----|----|")
for row in cur.execute('SELECT id, naam, omschrijving, organisatie, intern, releaselocatie, type FROM Beheeritems where intern == 0 and organisatie = "Geonovum" order by naam'):
    ide,naam,omschrijving,organisatie,internx,releaselocatie,typex = row
    print("|" + naam + "|" + typex + "|")


print()
for row in cur.execute('SELECT id, naam, omschrijving, organisatie, intern, releaselocatie, type FROM Beheeritems where intern == 0 and organisatie = "Geonovum" order by naam'):
    id,naam,omschrijving,organisatie,internx,releaselocatie,typex = row

    dependencies = [];
    cur = con.cursor()
    for dep in cur.execute('SELECT itemid,dependsonitem FROM BeheeritemDependencies where itemid = "' + id + '"'):
        itemid,dependson = dep;
        dependencies.append(dependson);

    print('## ' + naam )

    print('|value|waarde|')
    print('|-----|------|')
    print('| naam  | [' + naam + '](' + str(releaselocatie) + ')|')
    print('| omschrijving  |' + str(omschrijving) + '|')
    print('| organisatie  |' + str(organisatie) + '|')
    print('| type  |' + str(typex) + '|')
    print('| id  |' + id + '|')
    print('|afhankelijk van |' + ", ".join(dependencies) + '|')

    print()
    print('|releases|')
    print('|-------|')
    rcur = con.cursor()
    for release in rcur.execute('SELECT id,itemid,versienummer,label,downloaduri,releasedatum FROM Releases where itemid = "' + id + '" order by itemid,versienummer '):
        rident,ritemid,rversienummer,rlabel,rdownloaduri,rreleasedatum = release
        rreleaseid = ritemid + '/' + rversienummer
        print('| [' + rversienummer + '](' + rdownloaduri + ')|')
    print()
