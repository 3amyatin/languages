# Compare two tables

    with t1 as ( select 
      to_char(col1) as col1,
      col2
    from t01 ),

    t2 as ( select 
      col3,
      col4
    from t02 ),

    t1_nur as ( select 'T1 only' as SRC, t.* from ( select * from t1 minus     select * from t2 ) as t ),
    t2_nur as ( select 'T2 only' as SRC, t.* from ( select * from t2 minus     select * from t1 ) as t ),
    t1_t2  as ( select 'both'    as SRC, t.* from ( select * from t2 intersect select * from t1 ) as t ),

    t1_t2_src as ( 
                  select * from t1_t2
        union all select * from t1_nur
        union all select * from t2_nur
    )

    --select * from t1_52_src order by 2;

    select SRC, count(*)
    from t1_t2_src
    group by SRC
    union all select 'T1 total', count(*) from t1
    union all select 'T2 total', count(*) from t2
    ;

# Compare columns of two tables

    with T1 as (
      select COLUMN_NAME, COLUMN_TYPE
      from EXA_ALL_COLUMNS
      where COLUMN_SCHEMA = 'A' and COLUMN_TABLE = 'B'
    ),
    
    T2 as (
      select COLUMN_NAME, COLUMN_TYPE
      from EXA_ALL_COLUMNS
      where COLUMN_SCHEMA = 'A' and COLUMN_TABLE = 'C' and COLUMN_NAME != 'D'
    )
    
    select
      COLUMN_NAME,
      listagg(case when T='T1' then COLUMN_TYPE end) as T1,
      listagg(case when T='T2' then COLUMN_TYPE end) as T2
    from (
                select 'T1' as T, T1_only.* from (select * from T1 minus select * from T2) as T1_only
      union all select 'T2',      T2_only.* from (select * from T2 minus select * from T1) as T2_only
    ) 
    where 1=1
    group by COLUMN_NAME
    order by COLUMN_NAME
    ;
