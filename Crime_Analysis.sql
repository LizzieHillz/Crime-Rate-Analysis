SELECT * FROM Crime

--1, Which state has the highest crime in the year? (Answer - Lagos State)
SELECT top 1 STATE, SUM(NUMBER)TotalCrime FROM Crime
GROUP BY STATE
ORDER BY TotalCrime DESC

--2, Which state is said to be the most peaceful state with the least crime for the year? (Answer - Kebbi State)
SELECT top 1 STATE, SUM(NUMBER)Total FROM Crime
GROUP BY STATE
ORDER BY Total ASC

--3, What is the sum total of all crimes committed in the North East? (Answer - 8230)
SELECT REGION, SUM(NUMBER)Total FROM Crime
WHERE REGION = 'NORTH EAST'
GROUP BY REGION

--4, Which state has the highest number of crimes against lawful authories? (Answer - Lagos State)
SELECT top 1 STATE, SUM(NUMBER)Total FROM Crime
WHERE OFFENCE_CATEGORY = 'OFFENCES AGAINST LAWFUL AUTH'
GROUP BY STATE
ORDER BY Total DESC

--5, Which geo-political region is said to hav the highest crime rate? (Answer - South West)
SELECT top 1 REGION, SUM(NUMBER)Total FROM Crime
GROUP BY REGION
ORDER BY Total DESC

--6, What is the number of crimes committed in Lagos state? (Answer - 50975)
SELECT STATE, SUM(NUMBER)Total FROM Crime
WHERE STATE = 'LAGOS STATE'
GROUP BY STATE

--7, Which region would you recommend that the security agencies should pay lower attention to? (Answer - North East)
SELECT REGION, SUM(NUMBER)Total FROM Crime
GROUP BY REGION
ORDER BY Total ASC

--8, Which region and state has the highest number of crimes against properties? (Answer - Lagos State/South West)
SELECT top 1 STATE, REGION, SUM(NUMBER)Total FROM Crime
GROUP BY STATE, REGION
ORDER BY Total DESC

--9, Highlight the top 5 states with the highest number of crimes committed. (Lagos, Abia, Delta, Kano states and Federal Capital Territory)
SELECT top 5 STATE, SUM(NUMBER)TotalCrime FROM Crime
GROUP BY STATE
ORDER BY TotalCrime DESC

--10, Which South Eastern state has the least number of crimes committed? (Answer - Imo state)
SELECT top 1 STATE, REGION, SUM(NUMBER)Total FROM Crime
WHERE REGION = 'SOUTH EAST'
GROUP BY STATE, REGION
ORDER BY Total ASC

--11, What is the average number of crimes per state for the year?
SELECT STATE, AVG(NUMBER)Total FROM Crime
GROUP BY STATE
ORDER BY Total ASC

--12, Which offence category has the highest reported cases in the South West region? (Offences against Lawful Authority)
SELECT top 1 OFFENCE_CATEGORY, SUM(NUMBER)Total FROM Crime
WHERE REGION = 'SOUTH WEST'
GROUP BY OFFENCE_CATEGORY

--13, What is the total number of crimes committed against persons across all states? 
SELECT STATE, OFFENCE_CATEGORY, SUM(NUMBER)Total FROM Crime
WHERE OFFENCE_CATEGORY = 'OFFENCES AGAINST PERSONS'
GROUP BY STATE, OFFENCE_CATEGORY

--14,  Identify the top 3 offence subcategories with the highest number of crimes in the North Central region. (Theft/Stealing, Other offence against property and False pretence & cheating/fraud)
SELECT top 3 OFFENCE_SUBCATEGORY, SUM(NUMBER)Total FROM Crime
WHERE REGION = 'NORTH CENTRAL'
GROUP BY OFFENCE_SUBCATEGORY
ORDER BY Total DESC

--15, What is the total number of crimes reported in the South-South region? (15983)
SELECT REGION, SUM(NUMBER)Total FROM Crime
WHERE REGION = 'SOUTH SOUTH'
GROUP BY REGION

--16, Which state in the North West has the highest number of crimes related to drug offences? (Kaduna state)
SELECT top 1 STATE, REGION, OFFENCE_SUBCATEGORY, SUM(NUMBER)Total FROM Crime
WHERE OFFENCE_SUBCATEGORY = 'FORGERY' AND REGION = 'NORTH WEST'
GROUP BY STATE, REGION, OFFENCE_SUBCATEGORY
ORDER BY Total DESC

--17, Which state has the highest number of crimes under the offence subcategory "theft"? (Answr - Lagos state)
SELECT top 1 STATE, OFFENCE_SUBCATEGORY, SUM(NUMBER)Total FROM Crime
WHERE OFFENCE_SUBCATEGORY = 'THEFT /STEALING'
GROUP BY STATE, OFFENCE_SUBCATEGORY
ORDER BY Total DESC

--18, How many states have a crime count above the national average? 


--19, What is the trend of crimes against public peace in the North East region? (43)
SELECT REGION, OFFENCE_SUBCATEGORY, SUM(NUMBER)Total FROM Crime
WHERE REGION = 'NORTH EAST' AND OFFENCE_SUBCATEGORY = 'BREACH OF PEACE'
GROUP BY REGION, OFFENCE_SUBCATEGORY
ORDER BY Total DESC


--20, How many crimes were committed in Abuja (FCT) for the year? (Answer - 5382)
SELECT STATE, SUM(NUMBER)Total FROM Crime
WHERE STATE = 'FEDERAL CAPITAL TERRITORY'
GROUP BY STATE

--21, Which offence category contributes the least to the overall crime statistics in the South East? (Answer - Offences against lawful authority)
SELECT top 1 REGION, OFFENCE_CATEGORY, SUM(NUMBER)Total FROM Crime
WHERE REGION = 'SOUTH EAST'
GROUP BY REGION, OFFENCE_CATEGORY
ORDER BY Total ASC

--22, What is the distribution of crime categories in the South West region?
SELECT REGION, OFFENCE_CATEGORY, COUNT(NUMBER)Total FROM Crime
WHERE REGION = 'SOUTH WEST'
GROUP BY REGION, OFFENCE_CATEGORY
ORDER BY Total DESC