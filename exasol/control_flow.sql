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

  nvl(VAR1, VAR2),      -- === case when VAR1 is null then VAR2 else VAR1 end -- "Null Value"
  nvl2(VAR1, VAR2, VAR3), -- = case when VAR1 is null then VAR3 else VAR2 end -- "Null Value"
  nullif(VAR1, VAR2),   -- === case when VAR1 = VAR2  then NULL else VAR1 end
  nullifzero(VAR),      -- === case when VAR = 0      then NULL else VAR  end
  zeroifnull(VAR),      -- === case when VAR is null  then 0    else VAR  end


  coalesce(VAR1, VAR2, VAR3, 'ups') --- returns first argument which IS NOT NULL 


from
;