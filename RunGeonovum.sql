update Organisaties set local = true where id = 'Geonovum' or id = 'RWS';
update Organisaties set local = false where id != 'Geonovum' and id != 'RWS';

select * from Organisaties;
