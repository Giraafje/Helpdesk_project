create or replace table "journal-details-journal-details" as
select 
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',0) as "id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',2) as "journal_id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',3) as "property",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',4) as "prop_key"
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',5) as "old_value",
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',6) as "value"
from "journal-details-1-journal-details-1"

UNION ALL 

select 
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',0) as "id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',2) as "journal_id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',3) as "property",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',4) as "prop_key"
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',5) as "old_value",
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',6) as "value"
from "journal-details-2-journal-details-2"

UNION ALL 

select 
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',0) as "id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',2) as "journal_id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',3) as "property",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',4) as "prop_key"
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',5) as "old_value",
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',6) as "value"
from "journal-details-3-journal-details-3"

UNION ALL 

select 
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',0) as "id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',2) as "journal_id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',3) as "property",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',4) as "prop_key"
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',5) as "old_value",
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',6) as "value"
from "journal-details-4-journal-details-4"

UNION ALL 

select 
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',0) as "id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',2) as "journal_id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',3) as "property",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',4) as "prop_key"
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',5) as "old_value",
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',6) as "value"
from "journal-details-5-journal-details-5"

UNION ALL 

select 
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',0) as "id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',2) as "journal_id",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',3) as "property",
split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',4) as "prop_key"
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',5) as "old_value",
--split_part ("idjournal_idpropertyprop_keyold_valuevalue",';',6) as "value"
from "journal-details-6-journal-details-6";