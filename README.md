# Churn Insights & Revenue Impact: Understanding Customer Attrition in Telecom Company
## Project Summary
This project presents a customer churn dataset from a telecom company specializing in phone and internet services. The dataset covers the Q3 churn report, consisting of 7,043 customers from California. The goal of this project is to analyze churn patterns, identify key risk factors, and measure the financial impact of customer attrition.
We are collaborating with the customer experience and retention teams to assess churn drivers and develop strategies to minimize churn. By analyzing historical data, we aim to understand which customer segments are most at risk and how to improve retention through targeted actions.
The KPIs we are investigating include:
- **Churn Rate** – The percentage of customers who left during the period.
- **Revenue Lost Due to Churn** – The total revenue lost from churned customers.
- **Customer Lifetime Value (CLTV) Segmentation** – Categorizing customers into High, Medium, and Low Value segments to assess financial impact.
- **Churn by Customer Segments** – Identifying which groups churn the most (e.g., contract type, tenure, service type).
- **Average Tenure of Churned Customers** – Understanding whether early-stage customers are more likely to churn.
- **Monthly Charges vs. Churn** – Determining if pricing influences churn behavior.
- **Satisfaction Score & Churn** – Evaluating how customer satisfaction affects churn risk.
  
Insights and recommendations from this analysis will be used by the customer retention and strategy teams to develop personalized retention offers, improve pricing models, and enhance customer service efforts to minimize churn and maximize revenue retention.

## About Data

## Insight Deep Dive
### Overall Business Performance
- **Customer Total:** The company currently serves **7,043 customers**, meaning this dataset represents the entire active customer base for the period analyzed.
- **Total Revenue ($21.37M):** This is the total revenue earned from all customers during the analyzed period. A high revenue figure suggests a strong market presence, but churn can significantly impact future earnings.
- **Total CLTV ($30.99M):** The total estimated future value of the customer base is significant. This suggests that if all customers were retained, they would contribute nearly **$31M over their lifetime**.
- **Churn Rate (27%):** A **27% churn rate is quite high** for a telecom company. It means **more than 1 in 4 customers left**, which could indicate customer dissatisfaction, competitive pressure, or pricing issues.
- **Total Lost Revenue ($3.68M):** The company **lost $3.68** in revenue due to customer churn. This is **17.2% of total revenue**, showing that churn is causing a significant financial impact.
- **Total Lost CLTV ($7.75M):** The long-term value of lost customers is **$7.75M**, which is even more concerning. This shows that churned customers could have contributed much more revenue over time if retained.

![image](https://github.com/user-attachments/assets/3027e826-31f7-489f-bc8c-92b75df8b08c)

### CLTV Segmentation
- **High-Value Customers:** The company were able to **retain a total of 1891 High-Value customers**, which is a positive sign. However, **555 High-Value customers churned**. This is a significant concern as these customers are the most profitable, so losing them has a major financial impact. In addition, only **128 high value customers joined**, which is a concern because acquiring high-value customers is crucial for revenue growth. 
- **Medium-Value Customers:** Medium value customers have the **highest retention at 2,515 customers**, but also had the **highest churn at 1,108 customers**, showing mixed loyalty. Moreover, medium value customers make up the bulk of **new customers at 274 customers**.
- **Low-Value Customers:** Low value customers have the **lowest retention at 314 customers** and the **lowest churn at 206 customers**, indicating a smaller financial impact. Moreover, Low-Value customers make up the smallest portion of **new customers at 52 customers**, suggesting that the company is not heavily attracting or focusing on this segment.

![image](https://github.com/user-attachments/assets/6abdc083-461f-4e96-bac1-6504bd9d5ac4)

### CLTV Segmentation by Age Group
**Churn Rate Across Age Group**
- **Older age groups (Over 65, 51-65)**:
  - both 51-65 (20.52%) and Over 65 (34.78%) have high High-Value churn rates, with Over 65 losing slightly more customers (136), making them the most at-risk financially.
  - Medium-Value churn rates are significantly higher for Over 65 (44.62%) compared to 51-65 (26.90%), with both groups losing a similar number of customers (261 vs. 276), reinforcing Medium-Value volatility.
  - Low-Value churn is the highest across both segments, at 35.33% (51-65) and 55.17% (Over 65), indicating severe retention challenges in older age groups.
  - Retention strategies should focus on personalized engagement and service reliability improvements for High-Value customers, while Medium- and Low-Value customers may benefit from flexible pricing and targeted support initiatives.
  
- **Age Group 20-35 and 36-50:**
  - Both 36-50 (19.38%) and 20-35 (18.14%) have similar High-Value churn rates, with 36-50 losing more customers (149), making them a higher financial risk.
  - Medium-Value churn rates are nearly identical (36-50: 25.20%, 20-35: 25.60%), but 20-35 loses the most customers (301 vs. 258), highlighting their volatility.
  - Low-Value customers churn the fastest, with rates of 32.93% (36-50) and 29.17% (20-35), reflecting price sensitivity and service dissatisfaction despite lower churn counts (55 and 42).
  - Retention efforts should prioritize Medium-Value customers to stabilize revenue and High-Value customers to minimize financial loss.

- **Under 20:**
  - Segment has the lowest churn rates across all CLTV segments, with High-Value at 11.76%, Medium-Value at 13.95%, and Low-Value at 28.57%.
  - The absolute churn count is minimal, with only 4 High-Value, 12 Medium-Value, and 2 Low-Value customers lost.
  - This suggests that while churn is not a major concern in this group, their small customer base limits overall financial impact. Retention efforts for this segment should focus on customer acquisition rather than churn reduction, emphasizing incentives to attract young, long-term subscribers.

![image](https://github.com/user-attachments/assets/7611e318-4ce6-42cf-9fc3-2b3521568cb5)
![image](https://github.com/user-attachments/assets/38365d90-679b-4d5d-86f2-4f317eb6e0f2)
![image](https://github.com/user-attachments/assets/bf24701f-38d9-40ac-9dea-38869aabd562)
![image](https://github.com/user-attachments/assets/1260ba48-289a-4719-be7c-d5b78385c77e)


### Recommendation
- **Older age groups (Over 65, 51-65)**:
  - Retention strategies should focus on personalized engagement and service reliability improvements for High-Value customers, while Medium- and Low-Value customers may benefit from flexible pricing and targeted support initiatives.
    
- **Age Group 20-35 and 36-50:**
  - Retention efforts should prioritize Medium-Value customers to stabilize revenue and High-Value customers to minimize financial loss.
