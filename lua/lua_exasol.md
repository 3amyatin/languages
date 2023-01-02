# Lua in Exasol

https://docs.exasol.com/database_concepts/scripting/general_script_language.htm
https://docs.exasol.com/database_concepts/scripting/db_interaction.htm
https://docs.exasol.com/database_concepts/scripting/libraries.htm


    query([[SELECT * FROM t WHERE i=:v]],{v=1})
    query([[SELECT * FROM t WHERE ::c=:v]],{c=column_name,v=1})


output()  -- extended print()

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