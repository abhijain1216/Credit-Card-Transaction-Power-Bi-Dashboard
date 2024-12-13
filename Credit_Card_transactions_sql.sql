--- Step 1: Database Creation
CREATE DATABASE Credit_Card_Transactions

--- Step 2: Create Credit Card Detail Table
CREATE TABLE Credit_Card_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

--- Step 2: Create Customer Detail Table

CREATE TABLE Customer_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);


--- Step 3: Copy csv data into SQL 

--- Copy Credit Card details

COPY Credit_Card_detail
FROM 'D:\Projects\Power Bi Projects\Credit Card Transactions Power bi Project\credit_card.csv' 
DELIMITER ',' 
CSV HEADER;


--- Copy Customer details

COPY Customer_detail
FROM 'D:\Projects\Power Bi Projects\Credit Card Transactions Power bi Project\customer.csv' 
DELIMITER ',' 
CSV HEADER;


--- Dataset view

SELECT * FROM credit_card_detail
SELECT * FROM Customer_detail



















