# Exasol
cool Analytical DBMS

# Products
* Exasol Database https://docs.exasol.com/db/latest/home.htm
* Exasol SaaS https://docs.exasol.com/saas/home.htm



* Skripting in [Lua](/lua), Python, R, ...


## Copy a table
```
SELECT * INTO TABLE t2 FROM t1 [ORDER BY 1];
```
https://docs.exasol.com/sql/select_into.htm



## Migration from Oracle
https://github.com/exasol/database-migration

* Virtual Schema for Oracle https://github.com/exasol/oracle-virtual-schema/blob/main/doc/user_guide/oracle_user_guide.md
* https://github.com/exasol/oracle-virtual-schema/blob/main/doc/user_guide/oracle_user_guide.md#type-mappings-and-limitations

### Data types conversion
* DATE -> TIMESTAMP
* NUMBER -> DECIMAL
* VARCHAR2 -> VARCHAR
* FLOAT -> DOUBLE

