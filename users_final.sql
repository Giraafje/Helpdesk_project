select * from (
    select * , row_number() over (partition by "issue_id","id" order by "created_on_after") rn
    from 
        (select distinct * from (select u.*,f."created_on" as "created_on_after", f."lastname" as "prijmeni" 
            from 
                (select j."id",
                    isu."id" as "issue_id",
                    u."id" as "usser_id",
                    u."lastname",
                    j."created_on",
                    jd."prop_key",
                    jd."old_value",
                    jd."value"
                    from "users-users" u
                left join "journals-journals" j on u."id" = j."user_id"
                left join "journal-details-journal-details" jd on jd."journal_id" = j."id"
                left join "issues-issues" isu on j."journalized_id" = isu."id"
                order by j."id", "created_on") u 
left join (select j."id",
    isu."id" as "issue_id",
    u."id" as "usser_id",
    u."lastname",
    j."created_on",
    jd."prop_key",
    jd."old_value",
    jd."value"
    from "users-users" u
    left join "journals-journals" j on u."id" = j."user_id"
    left join "journal-details-journal-details" jd on jd."journal_id" = j."id"
    left join "issues-issues" isu on j."journalized_id" = isu."id"
    order by j."id","created_on") f
on cast(u."value" as varchar) = cast(f."usser_id" as varchar) and u."issue_id"=f."issue_id") t 
where t."prop_key" = 'assigned_to_id') x 
where (("created_on" <= "created_on_after") or ("created_on_after" is null))) y
where  rn=1
order by "created_on"