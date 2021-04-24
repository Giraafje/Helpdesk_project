--avg a medián date_fiff podle druh úkolů a priorit
create or replace table "a_first_question" as
select DATE_PART(year ,"created_on")*100 + DATE_PART(month ,"created_on") as "year_month",
"name_trackers",
"name_enumerations",
avg("issues_duration") as "avg_issues_duration",
MEDIAN("issues_duration") as "median_isses_duration", 
avg("issues_expected_close") as "avg_issues_expected_close",
MEDIAN("issues_expected_close") as "median_issues_expected_close" 
from "a_is_en_tr_isst_date_diff"
where "closed_on" <> '1900-01-01'
and "due_date" <> '1900-01-01'
and "created_on" <> '1900-01-01'
group by "year_month","name_trackers","name_enumerations"
order by "name_trackers","name_enumerations"
;