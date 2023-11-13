# SELECT
https://docs.exasol.com/db/latest/sql/select.htm

## Legend
    lowcaps    control words
    HIGHCAPS   variables
    ()         mandatory
    []         optional
    A|B        alternative


## with
    const as (
      select now() as NOW
    ),

    autogen as (
      select range_value from values between 1 and 10
    )

## select
    *,
    t2.*,
    1 as A,
    2 as "FROM", /* reserved word escaped */
    max(COL) over () /* === max(COL over (ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)*/

## from 
    schema_name.table_name as alias_name, 
    t2 /* like cross-join */,
    values (1, 2, 3),
    values between MIN_VALUE and MAX_VALUE [with step STEP_VALUE]

    select 
      RANGE_VALUE, 
      add_month(trunc(sysdate, 'YEAR'), RANGE_VALUE-1) as MONAT 
    from values between -13 and month(sysdate) 
    order by RANGE_VALUE;

    [left | right | inner | full] join SCHEMATABLE as ALIAS (on CONDITION | using (COL_LIST))

## where
    -- conditions before group by
    [start with CONDITION] connect by [nocycle] CONDITION [start with CONDITION]
## preferring
## group by
    1, VAR2, tab3.VAR3, local.VAR4, EXPR
## having
    -- conditions after group by
## window
## qualify
    -- conditions with analytic functions
    -- evaluated after having
## order by
    (POS | EXPR | ALIAS) [asc | desc] [nulls (first|last)]
## limit

## union all
https://docs.exasol.com/db/latest/sql/table_operators.htm
A+B

## union
https://docs.exasol.com/db/latest/sql/table_operators.htm
A+B
without duplicates

## minus
A-B  
without duplicates  
https://docs.exasol.com/db/latest/sql/table_operators.htm

## intersect
A*B  
without duplicates  
https://docs.exasol.com/db/latest/sql/table_operators.htm
