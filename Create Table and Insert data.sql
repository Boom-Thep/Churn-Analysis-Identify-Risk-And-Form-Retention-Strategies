--Create Table
CREATE TABLE reports(
customer_id VARCHAR(50) PRIMARY KEY,
age_group VARCHAR(20),
cltv int,
customer_status VARCHAR(50),
churn_category VARCHAR(50),
churn_reason VARCHAR(100),
monthly_charges decimal (11,2),
total_revenue decimal (11,2)
);

--Check to see if table is created
SELECT *
FROM reports;

-- Insert all values into a table
--\COPY reports FROM 'C:/Users/Dell/Downloads/Cleaned Churn dataset.csv' DELIMITER ',' CSV HEADER ENCODING 'utf8'