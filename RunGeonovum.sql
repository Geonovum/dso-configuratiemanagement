update Organisaties set local = true where id = 'Geonovum';
update Organisaties set local = false where id != 'Geonovum';

select * from Organisaties;
