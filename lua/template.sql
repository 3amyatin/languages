--/
create or replace script gesamttest.sql_create_table(p_table_name, p_action) returns rowcount as
  output("execute script " .. string.lower(exa.meta.script_schema .. "." .. exa.meta.script_name) .. "('" .. p_table_name .. "', '" .. p_action .. "') with output;")

  import('gesamttest.dz', 'dz')
  local newline, dquery, Set, flat_array, map_null = dz.newline, dz.dquery, dz.Set, dz.flat_array, dz.map_null
  
  local table_name = p_table_name
  
  local actions = Set {'show', 'execute'}
  if not actions[p_action] then error('Unknown action = ' .. tostring(p_action)) end
  local action = p_action


  local suc, res = dquery([[select * from gesamttest.conf_columns_v where table_name = :t order by col_position]], {t=table_name})
  assert(#res > 0, 'NOK #res = ' .. #res)
  
  local sql_out_arr = {}
  table.insert(sql_out_arr, 'create or replace table ' .. res[1].COL_SCHEMATABLE .. ' (')
  for i = 1, #res do
    local col = res[i]
    local col_name = col.COL_NAME
    if col.COL_SCHEMA == 'DWH_TECH' then col_name = col.TABLE_PREFIX .. '_' .. col_name end
    
    local default = ""
    if col.COL_DEFAULT ~= NULL      then default = default .. " default " .. col.COL_DEFAULT end 
    
    local comment = ""
    if col.COL_COMMENT_SQL ~= NULL  then comment = comment .. " comment is '" .. col.COL_COMMENT_SQL .. "'" end
    comment = comment .. (i < #res and "," or "")
    if col.COL_COMMENT_CODE ~= NULL then comment = comment .. " /* " .. col.COL_COMMENT_CODE .. " */" end
    table.insert(sql_out_arr, '  ' .. col_name .. ' ' .. col.COL_TYPE .. default .. comment)
  end      
  table.insert(sql_out_arr, ');')
  local sql_out = table.concat(sql_out_arr, newline)

  if action == 'show' then
    output(sql_out)

  elseif action == 'execute' then
    local suc, res = dquery(sql_out)
    output(table.concat(map_null(flat_array(res),''), newline))

  else error('Unknown action = ' .. tostring(p_action))
  end

;
/

execute script gesamttest.sql_create_table('SACH_STORNO_MONAT', 'show') with output;

