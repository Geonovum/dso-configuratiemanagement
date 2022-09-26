update Organisaties set intern = false where id = 'RWS';
update Organisaties set intern = true where id != 'RWS';

select * from Organisaties;
