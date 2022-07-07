.print # Configuratie Items
.mode markdown
select '[' || naam || '](' ||  releaselocatie || ')' as locatie,omschrijving,organisatie
from BeheerItems
where not intern;
