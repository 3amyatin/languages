# Lua syntax

~~~
--/
create or replace lua script SCHEMA.dummy_ZIELERGEBNISSE () returns rowcount as

  local success, res = pquery([[
    select TABLE_NAME
    from EXA_ALL_TABLES 
    where table_schema=:s]], {s=src_schema})
  if not success then cleanup() end

  -- now copy all tables of source schema into destination
  for i=1, #res do
    local table_name = res[i][1]
    -- create table identifiers
    local dst_table = join(".", quote(dst_schema), quote(table_name))
    local src_table = join(".", quote(src_schema), quote(table_name))
    
    -- use protected call of SQL execution including parameters
    local success = pquery([[
      create table ::d as select * from ::s]], 
      {d=dst_table, s=src_table})
    if not success then cleanup() end

  end -- /for


-- single line comment

--[[
multiline comment
--]]

---[[
not a comment
--]]

x, y = y, x

a, b, c = 0, 0, 0

x:bar(3, 4) === x.bar(x, 3, 4)



 
;
/
 
execute script SCHEMA.dummy_ZIELERGEBNISSE() with output;
~~~