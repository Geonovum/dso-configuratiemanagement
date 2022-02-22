.print # Release A''''
.mode markdown
select c.label,r.versienummer,r.downloaduri from Release r,ConfiguratieItem c
where r.ci = c.id and r.id in (
    select dependson
    from ReleaseAfhankelijkheid ra
    where ra.release = 16);
