create or replace table "journals-journals" as

select 
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',1) as "id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',2) as "journalized_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',3) as "journalized_type",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',4) as "user_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',5) as "created_on",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',6) as "private_notes"
from "journals-1-journals-1"

UNION ALL

select 
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',1) as "id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',2) as "journalized_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',3) as "journalized_type",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',4) as "user_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',5) as "created_on",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',6) as "private_notes"
from "journals-2-journals-2"

UNION ALL

select 
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',1) as "id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',2) as "journalized_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',3) as "journalized_type",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',4) as "user_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',5) as "created_on",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',6) as "private_notes"
from "journals-3-journals-3"

UNION ALL

select 
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',1) as "id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',2) as "journalized_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',3) as "journalized_type",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',4) as "user_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',5) as "created_on",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',6) as "private_notes"
from "journals-4-journals-4"

UNION ALL

select 
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',1) as "id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',2) as "journalized_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',3) as "journalized_type",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',4) as "user_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',5) as "created_on",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',6) as "private_notes"
from "journals-5-journals-5"

UNION ALL

select 
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',1) as "id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',2) as "journalized_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',3) as "journalized_type",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',4) as "user_id",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',5) as "created_on",
split_part ("idjournalized_idjournalized_typeuser_idcreated_onprivate_notes",';',6) as "private_notes"
from "journals-6-journals-6";
