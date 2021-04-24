--id a název projektu, jaky k tomu patří issues, kdy byl vytvořen projekt a issues, datum předchozí issues, počet issues za jeden den, rozdil pocet dnu, pocet dnu od zacatku projektu, rozdil pocet dnu-null nahrazeno 0
--zatím neřešíme počte dnů od začátku projektu
create or replace table "a_second_question" as
select
p."id" as "id_project", p."name", i."id" as "id_issue",
to_date (p."created_on",'dd.mm.yyyy') "created_on_project",
to_date (i."created_on",'dd.mm.yyyy') "created_on_issues",
LAG("created_on_issues") OVER (PARTITION BY p."id" ORDER BY "created_on_issues") AS "created_on_before",
count(*) OVER (PARTITION BY p."id","created_on_issues" ) as "cnt_issues_perday",
datediff(days,"created_on_before","created_on_issues" ) as "created_on_diff",
datediff(days,"created_on_project","created_on_issues" ) as "from_create_project_diff",
case when "created_on_diff" is null then 0
else  "created_on_diff" 
end as "created_on_diff_2"
from "projects-projects" p
left join "issues-issues" i on p."id" = i."project_id"
where i."id" is not null
order by "id_project"
;