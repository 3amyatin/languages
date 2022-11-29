-- symmetric behaviour 
-- https://docs.exasol.com/db/latest/sql_references/predicates/logicaljoinpredicates.htm

select * from (

  select null as "EXPRESSION",    null as "RESULT"
  union select 'TRUE and NULL',   TRUE and NULL   -- = NULL
  union select 'FALSE and NULL',  FALSE and NULL  -- = FALSE
  union select 'NULL and TRUE',   NULL and TRUE   -- = NULL
  union select 'NULL and FALSE',  NULL and FALSE  -- = FALSE
  union select 'NULL and NULL',    NULL and NULL   -- = NULL
  
  union select 'TRUE or NULL',    TRUE or NULL    -- = TRUE
  union select 'FALSE or NULL',   FALSE or NULL   -- = NULL
  union select 'NULL or TRUE',    NULL or TRUE    -- = TRUE
  union select 'NULL or FALSE',   NULL or FALSE   -- = NULL
  union select 'NULL or NULL',    NULL or NULL    -- = NULL
  
  union select 'not NULL',        not NULL        -- = NULL

) 
where EXPRESSION is not null
order by 2,1
;

