# Compare two tables

    with t1 as ( select 
      to_char(DGD_BGVG_VTNR) as DGD_BGVG_VTNR,
      DGD_DATENSTAND
    from DWH_OUT.SOURCE_MAP_DWT_GRUNDDATEN_V ),

    t2 as ( select 
      MGD_BGVG_VTNR,
      MGD_DATENSTAND
    from MAK360DATA.MAK_GRUNDDATEN_V ),

    t1_nur as ( select 'T1 only' as SRC, t.* from ( select * from t1 minus select * from t2 ) as t ),
    t2_nur as ( select 'T2 only' as SRC, t.* from ( select * from t2 minus select * from t1 ) as t ),
    t1_t2  as ( select 'both' as SRC, t.* from ( select * from t2 union select * from t1 ) as t ),

    t1_t2_src as ( select * from ( 
                  select * from t1_t2
        union all select * from t1_nur
        union all select * from t2_nur
      ) order by 2
    )

    -- select * from t1_52_src;

    select SRC, count(*)
    from t1_t2_src
    group by SRC
    union all select 'T1 total', count(*) from t1
    union all select 'T2 total', count(*) from t2
    ;