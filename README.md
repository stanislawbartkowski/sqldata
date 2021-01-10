# sqldata

Sample SQL data for testing purpose.

# DB2

## Connect
Connect to DB2 database

> db2 connect to db2test user db2inst1 <br>

## Create tables

> db2 -tsvf db2tables.sql<br>
> db2 -tsvf db2indexes.sql 

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

> db2 -tsvf db2droptables.sql<br>

Verify<br>

>db2 list tables<br>

```

Table/View                      Schema          Type  Creation time             
------------------------------- --------------- ----- --------------------------

  0 record(s) selected.
```

## Load data

> db2 -tsvf db2insert.sql<br>

# HIVE
 
## Connect data

Collect data.

| Data | Sample value |
| -- | -- |
| URL string to connect to Hive2 server | jdbc:hive2://banquets1.fyre.ibm.com:2181,sawtooth1.fyre.ibm.com:2181,sawtooth2.fyre.ibm.com:2181/testdb;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2
| Hive database | testdb
| Hive user | sb

## Create tables

Example:<br>

>  beeline -u "jdbc:hive2://banquets1.fyre.ibm.com:2181,sawtooth1.fyre.ibm.com:2181,sawtooth2.fyre.ibm.com:2181/testdb;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2" -n sb -f db2tables.sql
