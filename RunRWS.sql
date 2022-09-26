update Organisaties set local = true where id = 'RWS';
update Organisaties set local = false where id != 'RWS';

select * from Organisaties;
