--/
create or replace script gesamttest.dz returns rowcount as

  newline = string.char(13) .. string.char(10)
  
  function Set (list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
  end

  function dquery(stmt, p_params)
    -- https://docs.exasol.com/db/latest/database_concepts/scripting/db_interaction.htm
    local params = p_params or {}
    local suc, res = pquery(stmt, params)
    output("dquery: " .. res.statement_text)
    assert(suc, "NOK: " .. tostring(res.error_message))
    if res.rows_inserted or res.rows_updated or res.rows_deleted then output("inserted: " .. res.rows_inserted .. ", updated: "  .. res.rows_updated .. ", deleted: "  .. res.rows_deleted) end
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
  
;
/

execute script gesamttest.dz with output;

