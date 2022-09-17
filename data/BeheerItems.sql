--
-- This file is generated by an embedded javascript directly from UML
--     Wilko Quak (w.quak@geonovum.nl)
--
delete from BeheerItemsBase;
delete from BeheerItemDependenciesBase;
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-validatieregels","TPOD validatieregels","Validatie- en conformiteitsregels voor registratie en publicatie van omgevingsdocumenten DSO-LV","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/Validatieregels");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD","TPOD standaard","Toepassingsprofiel Omgevingsdocumenten (afgekort TPOD).","Geonovum",false,"Standaard","https://www.geonovum.nl/geo-standaarden/omgevingswet/STOPTPOD");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('KOOP','LVBB-bronhouderskoppelvlak','Geonovum','TPOD');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('DSO','DSO-Standaarden','Geonovum','TPOD');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMOW","IMOW model","Informatiemodel Omgevingswet","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/CIMOW");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','IMOW');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMOW-XSD","XSD IMOW","XML-Applicatieschema voor gegevensuitwisselling conform de IMOW standaard","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/xmlschema");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','IMOW-XSD');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-omgevingsplan","TPOD omgevingsplan","Toepassingsprofiel omgevingsplan","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD%20Omgevingsplan");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-omgevingsplan');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-waterschapsverordening","TPOD waterschapsverordening","Toepassingsprofiel waterschapsverordening
","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD_Waterschapsverordening");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-waterschapsverordening');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-projectbesluit","TPOD projectbesluit","Toepassingsprofiel projectbesluit
","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD%20Projectbesluit");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-projectbesluit');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-AMvB","TPOD AMvB en MR","Toepassingsprofiel AMvB/MR","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD%20AMvB-MR");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-AMvB');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-UML","TPOD UML","UML diagram behorend bij TPOD","Geonovum",true,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','IMOW-XSD','Geonovum','TPOD-UML');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','IMOW','Geonovum','TPOD-UML');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','CIMOW','Geonovum','TPOD-UML');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-omgevingsverordening","TPOD omgevingsverordening","Toepassingsprofiel omgevingsverordening","Geonovum",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-omgevingsverordening');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-omgevingsvisie","TPOD omgevingsvisie","","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD%20Omgevingsvisie");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-omgevingsvisie');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("Presentatie","Presentatiemodel TPOD","","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/Presentatiemodel");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-instructie","TPOD instructie","Toepassingsprofiel instructie.","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD%20Instructie");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-instructie');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-reactieve-interventie","TPOD reactieve interventie","Toepassingsprofiel reactieve interventie.","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD_Reactieve_interventie");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-reactieve-interventie');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-voorbereidingsbesluit","TPOD voorbereidingsbesluit","Toepassingsprofiel voorbereidingsbesluit.","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD_Voorbereidingsbesluit");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-voorbereidingsbesluit');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-programma","TPOD programma","Toepassingsprofiel programma","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD%20Programma");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-programma');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMOW-waardelijsten","Waardelijsten IMOW","Waardelijsten IMOW zoals gepubliceerd in de stelselcatalogus","Geonovum",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','IMOW-waardelijsten');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-Symbolen","Symbolenbibliotheek STOP-TPOD","Symbolen","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/Presentatiemodel");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','IMOW-waardelijsten','Geonovum','TPOD-Symbolen');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-N2000","TPOD Natura 2000-besluit","Toepassingsprofiel Natura 2000-besluiten","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD%20Natura%202000-besluiten");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-N2000');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-kennisgeving","TPOD kennisgeving omgevingsvergunning voor buitenplanse omgevingsplanactiviteiten","Toepassingsprofiel kennisgeving omgevingsvergunning voor
buitenplanse omgevingsplanactiviteit.","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD%20Kennisgeving%20omgevingsvergunning%20buitenplanse%20omgevingsplanactiviteit");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-kennisgeving');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("CIMOW","CIMOW","Conceptueel Informatiemodel Omgevingswet","Geonovum",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("LVBB-bronhouderskoppelvlak","LVBB bronhouderskoppelvlak","","KOOP",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('DSO','DSO-Standaarden','KOOP','LVBB-bronhouderskoppelvlak');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STOP","STOP standaard","","KOOP",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','KOOP','STOP');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('DSO','DSO-Standaarden','KOOP','STOP');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMAM","IMAM","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMTR","IMTR","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STAM","STAM","De Standaard aanvragen en meldingen (STAM) en het bijbehorende informatiemodel (IMAM) helpen bij het afleveren van een vergunningaanvraag of melding bij overheden.","RWS",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','STTR-XSD','RWS','STAM');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STTR","STTR","","RWS",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','IMTR-XSD','RWS','STTR');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STAM-Voorbeelden","Voorbeeldbestanden-STAM","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STTR-Voorbeelden","Voorbeeldbestanden-STTR","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMTR-XSD","XSD-IMTR","","RWS",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','STTR-Voorbeelden','RWS','IMTR-XSD');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STTR-XSD","XSD-STAM","","RWS",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','STAM-Voorbeelden','RWS','STTR-XSD');
