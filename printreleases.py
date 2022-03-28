#!/usr/bin/python3
import sqlite3
con = sqlite3.connect('ConfiguratieItems.sqlite')

print("# Releases van Geonovum")
print()


cur = con.cursor()
for row in cur.execute('SELECT id,ci,versienummer,label,downloaduri,releasedatum FROM Release order by ci,versienummer'):
    ident,ci,versienummer,label,downloaduri,releasedatum = row

    print('## ' + ci + " " + versienummer)

    print('|value|waarde|')
    print('|-----|------|')
    print('| ci  |' + ci + '|');
    print('| versienummer  |' + versienummer + '|');
    print('| label  |' + str(label) + '|');
    print('| downloaduri  |' + downloaduri + '|');
    print('| releasedatum  |' + str(releasedatum) + '|');
    print()

    first = True;
    cur2 = con.cursor()
    query = 'select r.ci,r.versienummer from ReleaseAfhankelijkheid ra,Release r where r.id = ra.dependson and ra.release = ' + ident
    for dependency in cur2.execute(query):
        releaseid,versienummer = dependency
        if (first):
            first = False;
            print('### dependencies')
            print('|release|versienummer|')
            print('|--------|--------|')
        print ('|' + releaseid + ' | ' + versienummer + '|')
    print()
