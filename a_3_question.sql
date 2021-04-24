--počet issues na projekt, jak často v projektu přibývají (dny) a kolik jich průměrně přibyde za den
create or replace table "a_3_question" as
select "id_project", "name", count("id_issue") as "cnt_issues", avg("created_on_diff") as "avg_created_on_diff", avg("cnt_issues_perday") as "avg_cnt_issues_perday" from 
"a_second_question" 
where "created_on_diff" is not null
group by "id_project", "name"
order by avg("created_on_diff"),count("id_issue")
;