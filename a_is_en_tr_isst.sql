create table "a_is_en_tr_isst" as
select
i."id",
i."tracker_id",
i."project_id",
i."due_date",
i."status_id",
i."priority_id",
to_date (i."created_on",'dd.mm.yyyy') "created_on",
to_date (i."updated_on",'dd.mm.yyyy') "updated_on",
i."start_date",
to_date (
case when i."closed_on" = '' then '01.01.1900'
else i."closed_on"
end ,'dd.mm.yyyy') "closed_on",
t."id" as "id_trackers",
t."name" as "name_trackers",
s."id" as "id_issues_statuses",
s."name" as "name_issues_statuses",
e."id" as "id_enumerations",
e."name" as "name_enumerations",
e."type"
from "issues-issues" i
left join "enumerations-enumerations" e on i."priority_id" = e."id"
left join "trackers-trackers" t on i."tracker_id" = t."id"
left join "issues-statuses-issues-statuses" s on i."status_id" = s."id";
