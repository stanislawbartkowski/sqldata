CREATE TABLE BANK_CLIENTS (
		CLIENT_ID CHAR(50) NOT NULL, 
		NAME CHAR(128), 
		ADDRESS CHAR(128), 
		ZIP CHAR(10), 
		AGE FLOAT, 
		GENDER CHAR(2), 
		MARITAL_STATUS CHAR(12), 
		PROFESSION CHAR(24), 
		NBR_YEARS_CLI FLOAT, 
		SAVINGS_ACCOUNT CHAR(3), 
		ONLINE_ACCESS CHAR(3), 
		JOINED_ACCOUNTS CHAR(3), 
		BANKCARD CHAR(3), 
		AVERAGE_BALANCE DECIMAL(10 , 2), 
		ACCOUNT_ID INTEGER NOT NULL, 
		ACCOUNT_TYPE CHAR(10), 
		EMAIL VARCHAR(64), 
		CCN VARCHAR(20), 
		PHONE1 VARCHAR(20), 
		PHONE2 VARCHAR(20), 
		CC CHAR(2), 
		CONTACT VARCHAR(64), 
		RTN VARCHAR(10)
	);

CREATE TABLE ACCOUNT_HOLDERS (
		ACCOUNT_HOLDER_ID INTEGER NOT NULL, 
		NAME CHAR(128), 
		ADDRESS CHAR(128), 
		ZIP CHAR(10), 
		AGE FLOAT, 
		GENDER CHAR(2), 
		MARITAL_STATUS CHAR(12), 
		PROFESSION CHAR(24), 
		NBR_YEARS_CLI FLOAT, 
		EMAIL VARCHAR(64), 
		CCN VARCHAR(20), 
		PHONE1 VARCHAR(20), 
		PHONE2 VARCHAR(20), 
		CC CHAR(2), 
		CONTACT VARCHAR(64)
	);

CREATE TABLE BANK_ACCOUNTS (
		ACCOUNT_ID INTEGER NOT NULL, 
		CUSTOMER_ID INTEGER NOT NULL, 
		ACCOUNT_TYPE CHAR(3) NOT NULL, 
		ACCOUNT_BALANCE DECIMAL(10 , 2), 
		JOINT_ACCOUNT_HOLDER CHAR(3), 
		BANKCARD CHAR(3), 
		ONLINE_ACCESS CHAR(3), 
		CARDNB VARCHAR(20), 
		RTN VARCHAR(10)
	);

CREATE TABLE BANK_CUSTOMERS (
		CUSTOMER_ID INTEGER NOT NULL, 
		NAME CHAR(128), 
		ADDRESS CHAR(128), 
		ZIP CHAR(10), 
		CREDIT_RATING INTEGER, 
		AGE FLOAT,
		GENDER CHAR(2), 
		MARITAL_STATUS CHAR(12), 
		PROFESSION CHAR(24), 
		NBR_YEARS_CLI FLOAT, 
		EMAIL VARCHAR(64), 
		CCN VARCHAR(20), 
		PHONE1 VARCHAR(20), 
		PHONE2 VARCHAR(20), 
		CC CHAR(2), 
		CONTACT VARCHAR(64)
	);

CREATE TABLE BANK_WRKEX_SALARY (
		EXPERIENCE_YEARS DECIMAL(5 , 2) NOT NULL, 
		SALARY INTEGER NOT NULL
	);

CREATE TABLE CHECKING_ACCOUNTS (
		ACCOUNT_ID INTEGER NOT NULL, 
		ACCOUNT_HOLDER_ID INTEGER NOT NULL, 
		ACCOUNT_BALANCE DECIMAL(10 , 2), 
		JOINT_ACCOUNT_HOLDER CHAR(3), 
		BANKCARD CHAR(3), 
		ONLINE_ACCESS CHAR(3), 
		CARDNB VARCHAR(20), 
		RTN VARCHAR(10)
	);

CREATE TABLE SAVINGS_ACCOUNTS (
		ACCOUNT_ID INTEGER NOT NULL, 
		ACCOUNT_HOLDER_ID INTEGER NOT NULL, 
		ACCOUNT_BALANCE DECIMAL(10 , 2), 
		JOINT_ACCOUNT_HOLDER CHAR(3), 
		BANKCARD CHAR(3), 
		ONLINE_ACCESS CHAR(3), 
		RTN VARCHAR(10)
	);

