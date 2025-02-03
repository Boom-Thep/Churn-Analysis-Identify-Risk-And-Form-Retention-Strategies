# Churn Insights & Revenue Impact: Understanding Customer Attrition in Telecom Company
## Project Summary
This project presents a customer churn analysis for a telecom company specializing in phone and internet services, using a dataset of 7,043 customers from California. The objective of this study is to identify key churn drivers, assess financial impact, and develop data-driven retention strategies. By analyzing customer churn across CLTV segmentation, age groups, churn reasons, and monthly pricing trends, the goal is to prioritize high-risk segments and improve customer retention efforts.
Key focus areas include:
- **Churn Rate & Revenue Loss:** Understanding overall churn impact on business revenue and long-term CLTV loss.
- **Customer Lifetime Value (CLTV) Churn Segmentation:** Identifying which customer groups (High, Medium, Low Value) and age segments are most at risk.
- **Churn by category and reason:** Analyzing the main reasons customers leave, such as competitor offers, service dissatisfaction, pricing concerns, and customer support issues.
- **Monthly Charges vs. Churn:** Determining how pricing influences churn behavior and identifying high-risk pricing segments.
  
Insights from this analysis will inform strategic initiatives to reduce churn, enhance pricing models, improve customer service, and develop personalized retention programs to maximize revenue retention and customer loyalty.

## About the data
Our analysis is based on the following dataset:
 1. **Customer Info:** This data include comprehensive information about or customers, such as their demographics (age, gender, marital status). By analyzing these details, we can profile our ideal customer.
 2. **Status: Status:** This data includes the customer's current standing (churned, active, or newly joined), CLTV, and churn reason if applicable. It helps analyze churn behavior, identify causes, segment customers by value (high, medium, low), and assess potential revenue loss to improve retention strategies.
 3. **Payment Info:** This data includes customer payment details such as contract type, billing preferences, and payment methods. It tracks financial metrics like monthly charges, total charges, refunds, extra charges, long-distance charges, and total revenue. By analyzing total revenue, we assess revenue loss from churn, while monthly charges help identify potential correlations with customer churn.

We use Excel Power Query to merge datasets and conduct a comprehensive analysis of **customer age, status, CLTV, churn category, churn reason, monthly charges, and total charges**. This analysis helps identify high-risk segments, key churn drivers, and the financial impact of customer attrition.

![image](https://github.com/user-attachments/assets/66d06fb1-0d08-415b-84f8-9e5d1c74f793)

## Executive Summary
This churn analysis provides a deep dive into customer attrition trends in a telecom company, revealing that competition, customer service dissatisfaction, and pricing concerns are the primary churn drivers. Key findings include:
- **27% overall churn rate**, leading to **$3.68M in revenue loss** and **$7.75M in long-term CLTV loss**.
- **High-Value customers** have **lower churn rates but cause significant financial loss** when they leave, making them a **top retention priority**.
- **Medium-Value customers** are the **most unstable**, with the **highest churn counts across all age groups**.
- Older customers **(Over 65)** have the **highest churn rates**, while **younger customers (20-35 and 36-50)** drive the **most absolute churn**. **Focus retention efforts on the 20-35 and 36-50 age groups first**, as they contribute the highest number of churned customers, leading to greater revenue loss. **Over 65 should be a secondary focus**, as their churn rate is highest but affects fewer customers overall.
- **Customers paying $81-$100** have the **highest churn rate (37.02%)**, followed by **$61-$80 (33.17%)**, suggesting price dissatisfaction in premium plans.
- **Competitor-driven churn** accounts for **45% of total churn**, followed by **poor service interactions (16.8%)** and **dissatisfaction with product/service quality (16.21%)**.

To mitigate churn, the company should enhance competitive pricing, improve customer service interactions, and focus on value-driven retention strategies for high-risk customer segments.

## Insight Deep Dive
### Overall Business Performance
- **Customer Total:** The company currently serves **7,043 customers**, meaning this dataset represents the entire active customer base for the period analyzed.
- **Total Revenue ($21.37M):** This is the total revenue earned from all customers during the analyzed period. A high revenue figure suggests a strong market presence, but churn can significantly impact future earnings.
- **Total CLTV ($30.99M):** The total estimated future value of the customer base is significant. This suggests that if all customers were retained, they would contribute nearly **$31M over their lifetime**.
- **Churn Rate (27%):** A **27% churn rate is quite high** for a telecom company. It means **more than 1 in 4 customers left**, which could indicate customer dissatisfaction, competitive pressure, or pricing issues.
- **Total Lost Revenue ($3.68M):** The company **lost $3.68** in revenue due to customer churn. This is **17.2% of total revenue**, showing that churn is causing a significant financial impact.
- **Total Lost CLTV ($7.75M):** The long-term value of lost customers is **$7.75M**, which is even more concerning. This shows that churned customers could have contributed much more revenue over time if retained.
  
![image](https://github.com/user-attachments/assets/8c630106-f1bf-4d32-acab-f7712c9a1820)

### CLTV Segmentation
- **High-Value Customers:** The company were able to **retain a total of 1891 High-Value customers**, which is a positive sign. However, **555 High-Value customers churned**. This is a significant concern as these customers are the most profitable, so losing them has a major financial impact. In addition, only **128 high value customers joined**, which is a concern because acquiring high-value customers is crucial for revenue growth. 
- **Medium-Value Customers:** Medium value customers have the **highest retention at 2,515 customers**, but also had the **highest churn at 1,108 customers**, showing mixed loyalty. Moreover, medium value customers make up the bulk of **new customers at 274 customers**.
- **Low-Value Customers:** Low value customers have the **lowest retention at 314 customers** and the **lowest churn at 206 customers**, indicating a smaller financial impact. Moreover, Low-Value customers make up the smallest portion of **new customers at 52 customers**, suggesting that the company is not heavily attracting or focusing on this segment.

![image](https://github.com/user-attachments/assets/615204bd-04c2-42b2-9307-6c13154aa92e)

### CLTV Churn Segmentation by Age Group
- **Older age groups (Over 65, 51-65)**:
  - **both 51-65 (20.52%) and Over 65 (34.78%)** have **high High-Value churn rates**, with Over 65 losing slightly more customers **(136)**, making them the most at-risk financially.
  - **Medium-Value churn rates** are significantly higher for **Over 65 (44.62%) compared to 51-65 (26.90%)**, with both groups losing a similar number of customers **(261 vs. 276)**, reinforcing Medium-Value volatility.
  - **Low-Value churn** is the highest across both segments, at **35.33% (51-65) and 55.17% (Over 65)**, indicating severe retention challenges in older age groups.
  - Retention strategies should focus on personalized engagement and service reliability improvements for High-Value customers, while Medium- and Low-Value customers may benefit from flexible pricing and targeted support initiatives.
  
- **Age Group 20-35 and 36-50:**
  - **Both 36-50 (19.38%) and 20-35 (18.14%)** have similar **High-Value churn rates**, with 36-50 losing more customers **(149)**, making them a higher financial risk.
  - **Medium-Value churn rates** are nearly identical **25.20% (36-50) and 25.60% (20-35)**, but 20-35 loses the most customers **(301 vs. 258)**, highlighting their volatility.
  - **Low-Value customers** churn the fastest, with rates of **32.93% (36-50) and 29.17% (20-35)**, reflecting price sensitivity and service dissatisfaction despite lower churn counts **(55 and 42)**.
  - Retention efforts should prioritize Medium-Value customers to stabilize revenue and High-Value customers to minimize financial loss.

- **Under 20:**
  - Segment has the **lowest churn rates across all CLTV segments**, with **High-Value at 11.76%**, **Medium-Value at 13.95%**, and **Low-Value at 28.57%.**
  - The absolute churn count is minimal, with only **4 High-Value, 12 Medium-Value, and 2 Low-Value customers lost**.
  - This suggests that while churn is not a major concern in this group, their small customer base limits overall financial impact. Retention efforts for this segment should focus on customer acquisition rather than churn reduction, emphasizing incentives to attract young, long-term subscribers.
![image](https://github.com/user-attachments/assets/3faf3ec8-1914-4065-882b-03fd12ae3063)

![image](https://github.com/user-attachments/assets/044689b8-1b2d-4d52-8a14-b7082ef4d4ce)

### Churn Reason
**Churn By category:**
- **Competitor:** Biggest churn driver, responsible for nearly half of all churn at **45% churn rate with total of 841 churned**.
- **Attitude:** The second driver of churn with **314 churned customers at 16.8 % churn rate**, which indicate problems in customer service and engagement strategies.
- **Dissatisfaction:** The third reasons why people churn with **303 churns at 16.21% churn rate**. 
- **Price:** Pricing concerns contribute to a notable share of churn with **211 churned at 11.29% churn rate**.
- **Other:** A smaller but still significant category that includes **miscellaneous or unclassified reasons**.

![image](https://github.com/user-attachments/assets/646dac3c-e30c-4f73-b0cc-1f5927f13fb0)

**Churn Reason:**
- **Competitor:** The biggest churn driver is **competitors offering better devices (313) and offers (311)**, making pricing and product offerings a major retention challenge.
- **Service and Support Issue:** Poor customer service attitude is a major factor in churn, with **attitude of a person alone accounts to 220 customers leaving** due to negative interactions with support staff.
-  **Dissatisfaction and Reliability issues:** Dissastisfaction is widespread across service reliability, product performance, and technical support, suggesting a need for better service quality and training for support teams.
-  **Price concerns:** While price-related churn is lower than service and competition issues, it remains a notable concern, especially in data pricing and affordability.
-  **Other reasons:** including unknown reasons, customers moving, lack of self service on the website, and for the person being deceased.
- 
![image](https://github.com/user-attachments/assets/48f2cf31-a1a0-491a-bac9-d08e41bf567d)

### Monthly Charges Vs. Churn
- **High Churn in Higher Monthly Charge Groups:** The highest churn rates are in the **$81-$100 (37.02%) and $61-$80 (33.17%) categories**. This suggests that customers with higher monthly charges are more likely to leave, likely due to cost concerns or a perceived lack of value.
- **Moderate Churn in Mid-Range Charges: $41-$60 (25.58%) and Over $100 (28.05%) categories** also experience moderate to high churn, further reinforcing that higher spending does not guarantee loyalty. The **Over $100 group has a slightly lower churn rate (28.05%) compared to $81-$100 (37.02%)**, suggesting that customers in this segment might be on premium plans with added incentives that improve retention.
- **Low Churn in Lower Monthly Charge Groups: The $20-$40 category (12.98%) and Under $20 (8.97%)** have the lowest churn rates. This indicates that budget-friendly customers are more stable, possibly due to lower expectations or fewer alternative options.
  
![image](https://github.com/user-attachments/assets/5dc796ed-54ba-45e3-8ff6-e124d199355a)

## Recommendation
To effectively reduce churn and improve customer retention, the following actions should be taken:
- Address Competitor-Driven Churn (45% of Total Churn):
  - Offer competitive pricing adjustments and exclusive retention incentives to customers in high-risk segments.
  - Introduce device upgrade programs and loyalty perks to prevent customers from switching to competitors.
  - Implement personalized retention campaigns for High-Value customers to enhance engagement.

- Improve Customer Service Experience (16.8% of Total Churn):
  - Train support staff to improve customer interactions and reduce dissatisfaction caused by poor service.
  - Implement proactive customer engagement, reaching out to at-risk customers before they decide to leave.
  - Strengthen self-service options to improve customer satisfaction and reduce reliance on direct support.

- Reevaluate Pricing Strategies for High-Churn Segments:
  - Optimize pricing for $81-$100 and $61-$80 customer groups, where churn rates are the highest.
  - Offer flexible pricing models, including bundled services and loyalty discounts.
  - Target price-sensitive customers with value-based offers to justify costs and improve retention.

- Focus on Retention of Medium-Value Customers:
  - Since Medium-Value customers contribute the highest churn count, implement contract incentives and engagement campaigns tailored to their needs.
  - Provide discounted renewal rates and added service benefits for long-term retention.
  - Offer targeted promotions and personalized outreach to reduce churn risk in this unstable segment.
  - By implementing these data-driven retention strategies, the company can minimize churn, maximize revenue retention, and enhance long-term customer loyalty in a competitive telecom market.

## Technical Details
- Excel
- SQL
- Tableau


