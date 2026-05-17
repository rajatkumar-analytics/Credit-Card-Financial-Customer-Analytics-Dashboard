---  DATA PREPRATION  ---

--- TABLE:01

CREATE TABLE cc_details (
	client_num INT,
    card_category VARCHAR(20),
    annual_fees INT,
    activation_30_days INT,
    customer_acq_cost INT,
    week_start_date DATE,
    week_num VARCHAR(20),
    qtr VARCHAR(10),
    current_year INT,
    credit_limit DECIMAL(10,2),
    total_revolving_bal INT,
    total_trans_amt INT,
    total_trans_ct INT,
    avg_utilization_ratio DECIMAL(10,3),
    use_chip VARCHAR(10),
    exp_type VARCHAR(50),
    interest_earned DECIMAL(10,3),
    delinquent_acc VARCHAR(5)
);

COPY cc_details
FROM 'C:\cc_add.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM cc_details;

---


--- TABLE:02

CREATE TABLE cc_customers (
	Client_Num INT,
	Customer_Age INT,
	Gender VARCHAR(10),
	Dependent_Count INT,
	Education_Level VARCHAR(50),
	Marital_Status VARCHAR(20),
	state_cd VARCHAR(50),
	Zipcode VARCHAR(20),
	Car_Owner VARCHAR(5),
	House_Owner VARCHAR(5),
	Personal_loan VARCHAR(5),
	contact VARCHAR(50),
	Customer_Job VARCHAR(50),
	Income INT,
	Cust_Satisfaction_Score INT
);

COPY cc_customers
FROM 'C:\cust_add.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM cc_customers;

