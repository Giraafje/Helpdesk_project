--přidání 2 sloupců - date_diff pro otázku č.1
create or replace table "a_is_en_tr_isst_date_diff" as
select a.*, datediff(days,"created_on","closed_on" ) as "issues_duration",
datediff(days,"due_date","closed_on" ) as "issues_expected_close"
--kladné číslo znamená, že se to uzavřelo po požadovaném uzavření, minus naopak
--datediff(days,"created_on","start_date" ) as "issues_days_to_start" start_date se dá měnit
from "a_is_en_tr_isst" a
;