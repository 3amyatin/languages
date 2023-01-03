# Lua in Exasol

https://docs.exasol.com/database_concepts/scripting/general_script_language.htm
https://docs.exasol.com/database_concepts/scripting/db_interaction.htm
https://docs.exasol.com/database_concepts/scripting/libraries.htm


    query([[SELECT * FROM t WHERE i=:v]],{v=1})
    query([[SELECT * FROM t WHERE ::c=:v]],{c=column_name,v=1})



# scripts
~~~
--/ some comment here
create or replace lua script SCHEMANAME.SCRIPTNAME() as

    import()
    query()
    pquery()
    output()  -- extended print()

/
execute script SCHEMANAME.SCRIPTNAME() with output;
~~~

## returns rowcount
~~~
--/
create or replace lua script SCHEMANAME.SCRIPTNAME() as

    return res -- or return { row_affected = 5 }

/
execute script SCHEMANAME.SCRIPTNAME() with output;
~~~


## returns table
~~~
--/
create or replace script myscript() returns table as

summary = {}

suc, res = pquery([[insert into people values('Jane','Doe')]])
summary[#summary+1] = {res.statement_text, suc}

suc2, res2 = pquery([[select * from people limit 3]])
summary[#summary+1] = {res2statement_text, suc2}

return summary, "sql_text varchar(2000000), success boolean"
/
execute script myscript();
~~~

~~~
--/
create or replace script testMeta() returns table as 
summary = {}

-- 1_ Access to meta data via exa.meta.*
summary[#summary + 1] = {'DB Version', tostring(exa.meta.database_version)}
summary[#summary + 1] = {'Script Name', tostring(exa.meta.script_name)}
summary[#summary + 1] = {'Session ID', tostring(exa.meta.session_id)}
summary[#summary + 1] = {'Statment ID (Execute script stmt_id)', tostring(exa.meta.statement_id)}
summary[#summary + 1] = {'#Nodes', tostring(exa.meta.node_count)}
summary[#summary + 1] = {'Current user', tostring(exa.meta.current_user)}

-- 2 Additional information returned by (p)query
suc, res = pquery([[select 1]], {})
summary[#summary +1] = {'Statment ID of a query executed within the script', tostring(res.statement_id)}

return summary, "Property varchar(200), val varchar(2000000)"

/
execute script testmeta();
~~~


## optional arguments 
via keyword array in function definition and array() in function call
~~~
--/
create or replace lua script SCHEMANAME.SCRIPTNAME(x, array y) returns rowcount as
    output(table.concat(y, ', '))
/
execute script SCHEMANAME.SCRIPTNAME('hello', array('this', 'that')) with output;
~~~

## library scripts
scripts containing only functions
~~~
--/
create or replace script mylib() as
    function square(x) return x*x end
/
--/
create or replace script myscript() as
    import('myschema.mylib', 'my_lib')
    output(my_lib.square(5))
/

execute script myscript() with output;
~~~
## SQL-queries
* query() for simple selects
* pquery() when you expect a query could

~~~
--/
create or replace script myscript(table_name) as

-- query 
res = query([[create table ::t(v varchar(100))]], {t=table_name})
res = query ([[insert into ::t values(:t)]], {t=table_name})
output(res.statement_text, res.statement_id, res.rows_affected)

-- pquery
suc, res = pquery([[insert into people values(null,null)]])
output(res.statement_text, res.statement_id)
if suc then 
    output(res.rows_affected)
else
    output(res.error_message, res.error_code)
end
/

execute script myscript() with output;
~~~

# Exasol libraries in Lua
* `sqlparsing` - SQL paring
* `socket` - for internet access
    * requires `require` command
* `lxp` - for XML parsing
    * requires `require` command
* not possible to add other libraries

# Socket
    http = require('socket.http')
    txt = http.request('http://www.example.com')
    print(txt)
    -- doesn't work with HTTPS

---
# metadata
~~~
--/
create or replace script testMeta() returns table as 
summary = {}

-- 1_ Access to meta data via exa.meta.*
summary[#summary + 1] = {'DB Version', tostring(exa.meta.database_version)}
summary[#summary + 1] = {'Script Name', tostring(exa.meta.script_name)}
summary[#summary + 1] = {'Session ID', tostring(exa.meta.session_id)}
summary[#summary + 1] = {'Statment ID (Execute script stmt_id)', tostring(exa.meta.statement_id)}
summary[#summary + 1] = {'#Nodes', tostring(exa.meta.node_count)}
summary[#summary + 1] = {'Current user', tostring(exa.meta.current_user)}

-- 2 Additional information returned by (p)query
suc, res = pquery([[select 1]], {})
summary[#summary +1] = {'Statment ID of a query executed within the script', tostring(res.statement_id)}

return summary, "Property varchar(200), val varchar(2000000)"

/
execute script testmeta();
~~~
