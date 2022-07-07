#!/usr/bin/python3
import sqlite3
con = sqlite3.connect('ConfiguratieItems.sqlite')

print("# Releases van Geonovum")
print()


cur = con.cursor()
for row in cur.execute('SELECT id,itemid,versienummer,label,downloaduri,releasedatum FROM Releases order by itemid,versienummer'):
    ident,itemid,versienummer,label,downloaduri,releasedatum = row

    print('## ' + itemid + " " + versienummer)

    print('|value|waarde|')
    print('|-----|------|')
    print('| itemid  |' + itemid + '|');
    print('| versienummer  |' + versienummer + '|');
    print('| label  |' + str(label) + '|');
    print('| downloaduri  |' + downloaduri + '|');
    print('| releasedatum  |' + str(releasedatum) + '|');
    print()

