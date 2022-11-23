/* Legend:
    lowcaps    control words
    HIGHCAPS   variables
    ()         mandatory
    []         optional
    A|B        alternative
*/

with
  const as (
    select now() as NOW
  ),

  autogen as (
    select range_value from values between 1 and 10
  )

select
  *,
  t2.*,
  1 as A,
  2 as "FROM", /* reserved word escaped */
  max(COL) over () /* === max(COL over (ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)*/

from 
  schema_name.table_name as alias_name, 
  t2 /* like cross-join */,
  values (1, 2, 3),
  values between MIN_VALUE and MAX_VALUE [with step STEP_VALUE]
  [left | right | inner | full] join SCHEMATABLE as ALIAS (on CONDITION | using (COL_LIST))

where conditions
[start with CONDITION] connect by [nocycle] CONDITION [start with CONDITION]
preferring
group by list having group_by_conditions
window
qualify
order by (POS | EXPR | ALIAS) [asc | desc] [nulls (first|last)]
limit