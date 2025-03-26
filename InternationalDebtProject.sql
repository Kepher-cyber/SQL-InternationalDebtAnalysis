SELECT *
FROM dataanalytics.international_debt id ;

-- Total amount of debt owed by all countries
SELECT SUM(debt) AS TotalDebt
FROM dataanalytics.international_debt id ;

-- How many distinct countries are recorded in the dataset?
SELECT COUNT(DISTINCT country_name)
FROM dataanalytics.international_debt id ;

-- What are the distinct types of debt indicators, and what do they represent?
SELECT DISTINCT indicator_name,indicator_code 
FROM dataanalytics.international_debt id ;

-- Which country has the highest total debt, and how much does it owe?
SELECT country_name, SUM(debt) AS Max_Debt
FROM dataanalytics.international_debt id 
GROUP BY country_name 
ORDER BY Max_Debt DESC
LIMIT 1;

-- What is the average debt across different debt indicators?
SELECT (AVG(debt)/1000000)::numeric(20,2) AS Avg_Debt_Millions, indicator_code
FROM dataanalytics.international_debt id 
GROUP BY id.indicator_code 
ORDER BY Avg_Debt_Millions DESC  ;

-- Which country has made the highest amount of principal repayments?
SELECT (SUM(debt)/1000000)::numeric(20,2) AS Sum_of_Debt_Millions,country_name
FROM dataanalytics.international_debt id
WHERE indicator_code = 'DT.AMT.DLXF.CD'
GROUP BY country_name 
ORDER BY Sum_of_Debt_Millions DESC
LIMIT 1;

-- What is the most common debt indicator across all countries?
SELECT indicator_name, COUNT(*)
FROM dataanalytics.international_debt id 
GROUP BY indicator_name
ORDER BY count DESC ;
