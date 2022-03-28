.print # Release A'''
.mode markdown
select c.label as Onderdeel,'[' || r.versienummer || '](' || r.downloaduri || ')' as Versie
from Release r,ConfiguratieItem c
where r.ci = c.id and r.id in (
    select dependson
    from ReleaseAfhankelijkheid ra
    where ra.release = 16);
