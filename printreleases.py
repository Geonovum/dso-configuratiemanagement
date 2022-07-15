#!/usr/bin/python3
import sqlite3
con = sqlite3.connect('ConfiguratieItems.sqlite')

print("# Releases van Geonovum")
print()


cur = con.cursor()
for row in cur.execute('SELECT id,itemid,versienummer,label,downloaduri,releasedatum FROM Releases order by itemid,versienummer'):
    ident,itemid,versienummer,label,downloaduri,releasedatum = row
    releaseid = itemid + '/' + versienummer

    print('## ' + itemid + " " + versienummer)

    print('|value|waarde|')
    print('|-----|------|')
    print('| releaseid |' + releaseid)
    print('| label  |' + str(label) + '|');
    print('| downloaduri  |' + downloaduri + '|');
    print('| releasedatum  |' + str(releasedatum) + '|');
    print()

    first = 1
    cur = con.cursor()
    for dep in cur.execute('SELECT itemid,dependsonitem FROM ReleaseDependencies where itemid = "' + releaseid + '"'):
        itemid,dependson = dep;
        if (first == 1):
            first = 0
            print('Is afhankelijk van:')
            print()
            print('|packagid|')
            print('|--------|')
        print('|' + dependson + '|')