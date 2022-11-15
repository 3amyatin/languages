--/
create or replace script gesamttest.sql_create_table_staging(p_table_name, p_action) returns rowcount as
  output("execute script " .. string.lower(exa.meta.script_schema .. "." .. exa.meta.script_name) .. "('" .. p_table_name .. "', '" .. p_action .. "') with output;")

  local newline = string.char(13)..string.char(10)
  
  function Set (list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
  end

  function dquery(stmt, params)
    -- https://docs.exasol.com/db/latest/database_concepts/scripting/db_interaction.htm
    output(type(params))
    output(#params)
    output(params.t)
    params = params or {}
    for i,j in pairs(params) do output(i..' '..j) end
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
  
  table_name = p_table_name
  
  local actions = Set {'show', 'execute'}
  if not actions[p_action] then error('Unknown action = ' .. tostring(p_action)) end
  local action = p_action

  q = [[
    select * from gesamttest.conf_columns tc
    join gesamttest.conf_staging_v ts on ts.to_table = tc.col_table and ts.to_schema = tc.col_schema
    where ts.table_name = :t
    order by col_position
  ]]
  
  local suc, res = dquery(q, {t=table_name})
  assert(#res > 0, 'NOK #res = ' .. #res)
  local sql_out_arr = {}
  table.insert(sql_out_arr, 'create or replace table ' .. res[1].TO_SCHEMATABLE .. ' (')
  for row = 1, #res do
    local default = ""
    local comment = ""
    if res[row].COL_DEFAULT ~= NULL      then default = default .. " DEFAULT " .. res[row].COL_DEFAULT end 
    if res[row].COL_COMMENT_SQL ~= NULL  then comment = comment .. " COMMENT IS '" .. res[row].COL_COMMENT_SQL .. "'" end
    comment = comment .. (row < #res and "," or "")
    if res[row].COL_COMMENT_CODE ~= NULL then comment = comment .. " /* " .. res[row].COL_COMMENT_CODE .. " */" end
    table.insert(sql_out_arr, '  ' .. res[row].COL_NAME .. ' ' .. res[row].COL_TYPE .. default .. comment)
  end      
  table.insert(sql_out_arr, ');')
  sql_out = table.concat(sql_out_arr, newline)
  output(sql_out)

;
/

execute script gesamttest.sql_create_table_staging('DIM_VERTRIEBSGEBIET_JES', 'show') with output;

