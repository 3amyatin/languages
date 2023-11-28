# Exasol operators
https://docs.exasol.com/db/latest/sql_references/predicates/overview.htm  
https://docs.exasol.com/db/latest/sql_references/operators/overview.htm  

## Predicates precedence
1. =, !=, <, <=, >, >=
2. [NOT] BETWEEN, EXISTS, [NOT] IN, IS [NOT] NULL, [NOT] REGEXP_LIKE, [NOT] LIKE, IS [NOT] JSON
3. NOT
4. AND
5. OR

## Operators precedence
1. +, -, PRIOR, CONNECT_BY_ROOT (unary)
2. ||
3. *, /
4. +, - (binary)

## NULL in AND and OR
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

