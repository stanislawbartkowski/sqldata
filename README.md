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
ACCOUNT_HOLDERS                 DB2INST1        T     2020-11-20-18.58.53.570504
BANK_ACCOUNTS                   DB2INST1        T     2020-11-20-18.58.53.809655
BANK_CLIENTS                    DB2INST1        T     2020-11-20-18.58.53.010737
BANK_CUSTOMERS                  DB2INST1        T     2020-11-20-18.58.54.396832
BANK_WRKEX_SALARY               DB2INST1        T     2020-11-20-18.58.54.634787
CHECKING_ACCOUNTS               DB2INST1        T     2020-11-20-18.58.54.881117
MORTGAGE_CUSTOMER               DB2INST1        T     2020-11-20-18.58.52.049126
MORTGAGE_DEFAULT                DB2INST1        T     2020-11-20-18.58.52.278320
MORTGAGE_JOIN                   DB2INST1        T     2020-11-20-18.58.52.518098
MORTGAGE_PROPERTY               DB2INST1        T     2020-11-20-18.58.52.766087
SAVINGS_ACCOUNTS                DB2INST1        T     2020-11-20-18.58.55.119853

  11 record(s) selected.
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
