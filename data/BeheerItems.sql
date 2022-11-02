--
-- This file is generated by an embedded javascript directly from UML
--     Wilko Quak (w.quak@geonovum.nl)
--
delete from BeheerItemsBase;
delete from BeheerItemDependenciesBase;
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("","TPODS","","Geonovum",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD","TPOD standaard","Toepassingsprofiel Omgevingsdocumenten (afgekort TPOD).","Geonovum",false,"Standaard","https://www.geonovum.nl/geo-standaarden/omgevingswet/STOPTPOD");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('DSO','DSO-Standaarden','Geonovum','TPOD');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('KOOP','LVBB-bronhouderskoppelvlak','Geonovum','TPOD');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMOW","IMOW model","Informatiemodel Omgevingswet","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/CIMOW");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('TPODS','TPOD-waterschapsverordening','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('TPODS','TPOD-AMvB','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD-kennisgeving','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('TPODS','TPOD-projectbesluit','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('TPODS','TPOD-omgevingsvisie','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('TPODS','TPOD-instructie','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('TPODS','TPOD-voorbereidingsbesluit','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('TPODS','TPOD-reactieve-interventie','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('TPODS','TPOD-programma','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('TPODS','TPOD-omgevingsplan','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('TPODS','TPOD-N2000','Geonovum','IMOW');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD-omgevingsverordening','Geonovum','IMOW');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMOW-XSD","XSD IMOW","XML-Applicatieschema voor gegevensuitwisselling conform de IMOW standaard","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/xmlschema");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','IMOW-XSD');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-omgevingsverordening","TPOD omgevingsverordening","Toepassingsprofiel omgevingsverordening","Geonovum",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-omgevingsverordening');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("Presentatie","Presentatiemodel TPOD","","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/Presentatiemodel");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMOW-waardelijsten","Waardelijsten IMOW","Waardelijsten IMOW zoals gepubliceerd in de stelselcatalogus","Geonovum",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','IMOW-waardelijsten');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-Symbolen","Symbolenbibliotheek STOP-TPOD","Symbolen","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/Presentatiemodel");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','IMOW-waardelijsten','Geonovum','TPOD-Symbolen');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("TPOD-kennisgeving","TPOD kennisgeving omgevingsvergunning voor buitenplanse omgevingsplanactiviteiten","Toepassingsprofiel kennisgeving omgevingsvergunning voor
buitenplanse omgevingsplanactiviteit.","Geonovum",false,"Standaard","https://github.com/Geonovum/TPOD/tree/master/TPOD%20Kennisgeving%20omgevingsvergunning%20buitenplanse%20omgevingsplanactiviteit");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','Geonovum','TPOD-kennisgeving');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("CIMOW","CIMOW","Conceptueel Informatiemodel Omgevingswet","Geonovum",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','IMOW','Geonovum','CIMOW');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("LVBB-bronhouderskoppelvlak","LVBB bronhouderskoppelvlak","","KOOP",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('DSO','DSO-Standaarden','KOOP','LVBB-bronhouderskoppelvlak');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STOP","STOP standaard","","KOOP",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('Geonovum','TPOD','KOOP','STOP');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('DSO','DSO-Standaarden','KOOP','STOP');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMAM","IMAM","Specificatie STAM inclusief IMAM","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMAM-in-EA","IMAM in EA","IMAM model in Enterprise Architect","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMTR","IMTR","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMTR-in-EA","IMTR in EA","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STTR-specificatie","Specificatie STTR","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STAM","STAM","De Standaard aanvragen en meldingen (STAM) en het bijbehorende informatiemodel (IMAM) helpen bij het afleveren van een vergunningaanvraag of melding bij overheden.","RWS",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','XSD-verzoekbericht','RWS','STAM');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','STAM-Voorbeelden','RWS','STAM');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','XSD-verzoeknotificatie','RWS','STAM');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','XSD-Verzoeknotificatie','RWS','STAM');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','XSD-Verzoekbericht','RWS','STAM');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','IMAM','RWS','STAM');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','IMAM-in-EA','RWS','STAM');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','STAM-XSD','RWS','STAM');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STTR","STTR","","RWS",false,"Standaard","");
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','IMTR-XSD','RWS','STTR');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','STTR-Voorbeelden','RWS','STTR');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','IMTR','RWS','STTR');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','IMTR-in-EA','RWS','STTR');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','STTR-specificatie','RWS','STTR');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','STTR-Schematron','RWS','STTR');
insert into BeheerItemDependenciesBase(itemorganisatie,itemid,dependsonorganisatie,dependsonid) values ('RWS','STTR-DMN','RWS','STTR');
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STTR-Schematron","STTR Schematron","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STTR-DMN","STTR-DMN","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STAM-Voorbeelden","Voorbeeldbestanden STAM","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STTR-Voorbeelden","Voorbeeldbestanden-STTR","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("STAM-XSD","XSD STAM","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("XSD-verzoekbericht","XSD verzoekbericht","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("XSD-Verzoekbericht","XSD Verzoekbericht","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("XSD-Verzoeknotificatie","XSD Verzoeknotificatie","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("XSD-verzoeknotificatie","XSD verzoeknotificatie","","RWS",false,"Standaard","");
insert into BeheerItemsBase(id,naam,omschrijving,organisatie,intern,type,releaselocatie) values("IMTR-XSD","XSD-IMTR","","RWS",false,"Standaard","");
