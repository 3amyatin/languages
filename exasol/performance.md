# Exasol performance

# data types
* CHAR(20) better than VARCHAR(20)
* VARCHAR(20) better than VARCHAR(20000000)

# JOIN 
* :star: avoid USING ()
* do JOIN on number fields, not on varchar
* avoid JOIN ON criteria with data transformation

# DML = INSERT
* slower with indexes → avoid unused primary keys

