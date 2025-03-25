# SQL-InternationalDebtAnalysis
This is a simple analysis of Internal Debts taken by Countries using POSTGRESQL
## **INTRODUCTION**
This project analyzes the World Bank Data set on debts acquired by developing countries from the years 1970 to 2015. The debt accrued is grouped into multiple debt categories. This documentation aims to bring an understanding of the debt data to be able to provide accurate and reliable financial insights for impactful decision making.
### Insightful Questions
1. What is the total amount of debt owed by the countries?
  - Here we use the aggregate function of **SUM(debt)** to calculate the total amount of debt owed by the countries. This gives us the broad view of total debts owed and we can then compare it to previous periods to be able to identify the borrowing trend.
2. How many distinct countries are recorded in the dataset?
  - Here we use the **DISTINCT** keyword to get only the country names without having multiple country names.This insight enables us to see how many countries take loans at a wide view and we can then be able to drill down further if the loan taken have had significant economic development. 
3. What are the distinct types of debt indicators, and what do they represent?
  - This requires the unique debt indicators from the dataset and what they mean. We use the **DISTINCT indicator_name** to get the unique debt indicator names. 
*What do they represent:*
    - PPG – Public and Publicly Guaranteed debt (this is debt borrowed by the government or debt that the government has guaranteed).
    - PNG – Private Non-Guaranteed debt (this is debt borrowed by private entities without government backing).
    - AMT – Principal Amount (the original loan amount that must be repaid). Example: If a country borrows $1 million, repaying $200,000 of that original amount is a principal repayment.
    - INT – Interest Payment (the extra cost paid to borrow money). If a country borrows $1 million at 5% interest, they pay $50,000 in interest annually.
    - DIS – Disbursement (the money actually received from the lender). Example: If a lender approves $500,000, but only $300,000 has been received so far, that's the disbursement.
    -External Debt – Debt borrowed from foreign lenders (not domestic).
*Types of Lenders:*
    Multilateral – Large international organizations like the World Bank or IMF.
    Bilateral – Loans from one country to another.
    Commercial Banks – Traditional banks that lend money.
    Private Creditors – Non-bank lenders such as investment funds or private institutions.
    Official Creditors – Government-related institutions or international development organizations.
    Other Private Creditors – Smaller private lenders that don’t fit in typical categories.

4. The Country with the highest debt and by how much? 
  -Use of **MAX(debt)** aggregate function to find the maximum debt, selecting also the country name and grouping the country name since we have the second column of country name we then use **LIMIT 1** to filter only the top country. This will enable us to further explore if for example taking higher debts leads to economic growth or quite the opposite. It will also allow us to investigate the reasons why this country takes higher debt and other deeper insights. 
5. What is the average debt across different debt indicators?
  - This question we group the debt based on the debt indicators and we then calculate the average amount of debt using the **AVG(debt)** aggregation function.Here we can summarize the average debt to see the trend between different countries of different economic powers. 
6. Which country has made the highest amount of principal repayments?
  - Since we have multiple debt indicators it is important for us to filter based on principal repayments specifically for loans taken by the government and are guaranteed payment. So we can use the **SUM(debt)** aggregation function to get the total value of the debt we then use **GROUP BY** to categorize the all country repayments into one and then **ORDER BY** to visualize the trend from descending order. This insight gives the most committed country that pays its loans. 
