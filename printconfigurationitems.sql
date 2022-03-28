.print # Configuratie Items
.mode markdown
select '[' || label || '](' ||  releaselocatie || ')' as locatie,omschrijving,organisatie
from ConfiguratieItem
where not intern;
