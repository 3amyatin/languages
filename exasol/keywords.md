# Keywords in Exasol
aka reserved words

## DISTRIBUTE BY
* happens in ALTER TABLE, CREATE TABLE
* improves [performance](performance.md)

https://exasol.my.site.com/s/article/Data-Distribution

~~~
alter table TABLENAME distribute by COL_ID;
alter table TABLENAME drop distribution keys;

create table TABLENAME (
  COL_ID decimal,
  COLNAME2 coltyp2,
  ...,
  distribute by COL_ID
);
~~~