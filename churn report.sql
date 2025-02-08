--SQL code for tableau
SELECT *,CASE
        WHEN monthly_charges < 20 then 'under $2o'
        WHEN monthly_charges between 20 and 40 then '$20-$40'
        WHEN monthly_charges between 41 and 60 then '$41-$60'
        WHEN monthly_charges between 61 and 80 then '$61-$80'
        WHEN monthly_charges between 81 and 100 then '$81-$100'
        WHEN monthly_charges > 100 then 'Over $100'
        END as monthly_charges_group, customer_status,
CASE 
    WHEN cltv >= 5000 THEN 'High Value'
    WHEN cltv BETWEEN 2500 AND 4999 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS cltv_segment,
SUM(CASE WHEN customer_status = 'Churned' then 1 else 0 end) as churn_value,
SUM(CASE WHEN customer_status is not null then 1 else 0 end) as counter
FROM reports
GROUP BY customer_id;


------------------------Overall Business Performance: Total Revenue, total customer, churn rate, total lost revenue from churn, total_cltv_lost----------------
SELECT
   count(*) as total_customer,
   SUM(total_revenue) as total_revenue,
   SUM(cltv) as total_cltv,
   ROUND(SUM(CASE WHEN customer_status = 'Churned' then 1 else 0 end) * 1.0 / count(*),2) as churn_rate,
      (SELECT 
	      SUM(total_revenue) as total_lost_revenue
       FROM reports
       WHERE customer_status = 'Churned'),
	   (SELECT 
	      SUM(cltv) as total_lost_cltv
       FROM reports
       WHERE customer_status = 'Churned')
FROM reports;

--------------------------------------------------CLTV Segmentation ANALYSIS----------------------------------------------------------------------------------
--Classify customers into CLTV tiers to find high-value customers at risk.
SELECT 
  customer_status,
  CASE 
    WHEN cltv >= 5000 THEN 'High Value'
    WHEN cltv BETWEEN 2500 AND 4999 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS cltv_segment,
  COUNT(*) AS customer_count
FROM reports
GROUP BY customer_status, cltv_segment
ORDER BY customer_status, cltv_segment;

--Age group by cltv segment: Total count of customer in each segment both churn and not churn
SELECT 
   age_group,
   SUM(CASE WHEN cltv >= 5000 then 1 else 0 end) as high_value_count,
      SUM(CASE WHEN cltv>=5000 then 1 else 0 end) FILTER (WHERE customer_status = 'Churned') as high_value_churn_count,
   SUM(CASE WHEN cltv between 2500 and 4999 then 1 else 0 end) as medium_value_count,
      SUM(CASE WHEN cltv between 2500 and 4999 then 1 else 0 end) FILTER (WHERE customer_status = 'Churned') as medium_value_churn_count,
   SUM(CASE WHEN cltv < 2500 then 1 else 0 end) as low_value_count,
      SUM(CASE WHEN cltv < 2500 then 1 else 0 end) FILTER (WHERE customer_status = 'Churned') as low_value_churn_count
FROM reports
GROUP BY age_group;

--Age group by cltv segment: Total count of customer in each segment and churn rate.
SELECT 
   age_group,
   -- High Value Customers
   SUM(CASE WHEN cltv >= 5000 THEN 1 ELSE 0 END) AS high_value_count,
      ROUND(SUM(CASE WHEN cltv >= 5000 THEN 1 ELSE 0 END) 
      FILTER (WHERE customer_status = 'Churned') * 1.0 / (SUM(CASE WHEN cltv >= 5000 THEN 1 ELSE 0 END)) * 100,2) as high_value_churn_rate,
   -- Medium Value Customers
   SUM(CASE WHEN cltv BETWEEN 2500 AND 4999 THEN 1 ELSE 0 END) AS medium_value_count,
      ROUND(SUM(CASE WHEN cltv BETWEEN 2500 AND 4999 THEN 1 ELSE 0 END) 
      FILTER (WHERE customer_status = 'Churned') * 1.0 / (SUM(CASE WHEN cltv BETWEEN 2500 AND 4999 THEN 1 ELSE 0 END)) * 100, 2) as medium_value_churn_rate,
   -- Low Value Customers
   SUM(CASE WHEN cltv < 2500 THEN 1 ELSE 0 END) AS low_value_count,
      ROUND(SUM(CASE WHEN cltv < 2500 THEN 1 ELSE 0 END) 
      FILTER (WHERE customer_status = 'Churned') * 1.0 / (SUM(CASE WHEN cltv < 2500 THEN 1 ELSE 0 END)) * 100, 2) as low_value_churn_rate	
FROM reports
GROUP BY age_group
ORDER BY high_value_count DESC;


--------------------------------------------------WHAT ARE THE BIGGEST REASON CUSTOMER CHURN------------------------------------------------------------
--Count churn and churn rate total by category
SELECT 
     churn_category,
	 COUNT(*) as total_churn,
	 ROUND(COUNT(*) * 1.0 / (select COUNT(*)
	 FROM reports
	 WHERE customer_status = 'Churned')*100,2) as churn_rate
FROM reports
WHERE customer_status = 'Churned'
GROUP BY churn_category
ORDER BY count(*) DESC;

--Count churn total by reason
SELECT
   churn_reason,
   COUNT(*)
FROM reports
WHERE customer_status = 'Churned'
GROUP BY churn_reason
ORDER BY count(*) DESC;

---------------------------------------------------MONTHLY CHARGES ANALYSIS----------------------------------------------------------------------
-- Churn By Monthly Charges Group
SELECT 
   monthly_charges_group, 
     COUNT(*) as total_customer,
     SUM(CASE WHEN customer_status = 'Churned' then 1 else 0 end) as total_churn,
     ROUND(SUM(CASE WHEN customer_status = 'Churned' then 1 else 0 end) * 1.0 / COUNT(*) * 100,2) as churn_rate
FROM
    (SELECT
        CASE
        WHEN monthly_charges < 20 then 'under $2o'
        WHEN monthly_charges between 20 and 40 then '$20-$40'
        WHEN monthly_charges between 41 and 60 then '$41-$60'
        WHEN monthly_charges between 61 and 80 then '$61-$80'
        WHEN monthly_charges between 81 and 100 then '$81-$100'
        WHEN monthly_charges > 100 then 'Over $100'
        END as monthly_charges_group, customer_status
     FROM reports
)
WHERE monthly_charges_group IS NOT NULL
GROUP BY monthly_charges_group
ORDER BY total_customer DESC;

