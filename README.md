# sqldata

Sample SQL data for testing purpose.

# DB2

## Connect
Connect to DB2 database

> db2 connect to db2test user db2inst1 <br>

## Create tables

> db2 -tvf db2tables.sql

Verify<br>

>db2 list tables
```
Table/View                      Schema          Type  Creation time             
------------------------------- --------------- ----- --------------------------
ACCOUNT_HOLDERS                 DB2INST1        T     2020-11-20-19.42.42.177249
BANK_ACCOUNTS                   DB2INST1        T     2020-11-20-19.42.42.457481
BANK_CLIENTS                    DB2INST1        T     2020-11-20-19.42.41.517832
BANK_CUSTOMERS                  DB2INST1        T     2020-11-20-19.42.42.737915
BANK_WRKEX_SALARY               DB2INST1        T     2020-11-20-19.42.43.013272
CHECKING_ACCOUNTS               DB2INST1        T     2020-11-20-19.42.43.267106
SAVINGS_ACCOUNTS                DB2INST1        T     2020-11-20-19.42.43.532879

  7 record(s) selected.
```

## Remove tables

> db2 -tvf db2droptables.sql<br>

Verify<br>

>db2 list tables<br>

```

Table/View                      Schema          Type  Creation time             
------------------------------- --------------- ----- --------------------------

  0 record(s) selected.
```
