update Organisaties set intern = false where id = 'Geonovum';
update Organisaties set intern = true where id != 'Geonovum';

select * from Organisaties;
