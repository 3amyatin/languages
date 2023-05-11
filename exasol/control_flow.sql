-- https://docs.exasol.com/db/latest/sql_references/functions/scalarfunctions.htm#OtherScalarFunctions
-- no IF() or IIF()
-- use CASE in all cases!

select
  case 
    when CONDITION1 then RESULT1
    when CONDITION2 then RESULT2
    else RESULT3
  end as CASE1,

 case VAR
    when EXPRESSION1 then RESULT1
    when EXPRESSION2 then RESULT2
  end as CASE2,

  case when CONDITION then RESULT else RESULT_ELSE end as CASE3_INLINE,

  decode() -- like case

  nvl(VAR, 0),      -- === case when VAR is null then ARG2 else VAR  end -- VAR or PAR
  nvl2(VAR, 1, 0),  -- === case when VAR is null then ARG3 else ARG2 end -- "Null Value"
  nullif(VAR, 0),   -- === case when VAR = ARG   then null else VAR  end -- converts some_nulls (VAR2) to NULL
  nullifzero(VAR),  -- === case when VAR = 0     then null else VAR  end -- converts 0 to NULL
  zeroifnull(VAR),  -- === case when VAR is null then 0    else VAR  end -- converts NULL to 0

  coalesce(VAR1, VAR2, VAR3, 'ups') --- returns first argument which IS NOT NULL 


from
;