truncate account_holders;
\copy account_holders FROM 'data/accountholder.csv' DELIMITER ','  CSV

truncate bank_accounts;
\copy bank_accounts FROM 'data/bankaccounts.csv' DELIMITER ','  CSV

truncate bank_clients;
\copy bank_clients FROM 'data/bankclients.csv' DELIMITER ','  CSV

truncate bank_customers;
\copy bank_customers FROM 'data/bankcustomers.csv' DELIMITER ','  CSV NULL 'NULL'

truncate bank_wrkex_salary;
\copy bank_wrkex_salary FROM 'data/bankwrkexsalary.csv' DELIMITER ','  CSV

truncate checking_accounts;
\copy checking_accounts FROM 'data/checkingaccounts.csv' DELIMITER ','  CSV

truncate savings_accounts;
\copy savings_accounts FROM 'data/savingaccounts.csv' DELIMITER ','  CSV


