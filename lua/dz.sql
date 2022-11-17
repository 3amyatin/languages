--/
create or replace script gesamttest.dz returns rowcount as

/*
  import('gesamttest.dz', 'dz')
  local newline, dquery, Set, flat_array, map_null = dz.newline, dz.dquery, dz.Set, dz.flat_array, dz.map_null
*/

  newline = string.char(13) .. string.char(10)
  
  function Set (list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
  end

  function dquery(stmt, p_params)
    -- https://docs.exasol.com/db/latest/database_concepts/scripting/db_interaction.htm
    -- todo: _assert_rows = 0/1/...
    -- todo: flatten res = 
    -- todo: suc weg, keep only res
    local params = p_params or {}
    local suc, res = pquery(stmt, params)
    output("dquery: " .. res.statement_text)
    assert(suc, "NOK: " .. tostring(res.error_message))
    if res.rows_affected 
      then output("rows inserted: " .. res.rows_inserted .. ", updated: "  .. res.rows_updated .. ", deleted: "  .. res.rows_deleted) 
      else 
        local cols = #res==0 and '' or ", cols: " .. #res[1]
        output("rows: " .. #res .. cols)
    end
    
    -- todo: if execute script then output(table.concat(flat_array(res), newline))
    
    return suc, res
  end  

  function flat_array(arr, ind)
    local ind = ind or 1
    local new_arr = {}
    for i=1, #arr do
      new_arr[i] = arr[i][ind] 
    end
    return new_arr
  end

  function map_null(arr, v_null)
    for i=1, #arr do
      if arr[i] == null then
        if v_null ~=  null
          then arr[i] = v_null
          else table.remove(arr, i)
        end
      end
    end
    return arr
  end
  
;
/

execute script gesamttest.dz with output;

