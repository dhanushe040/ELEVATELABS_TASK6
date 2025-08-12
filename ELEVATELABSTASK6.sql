#SUB/NESTED QUERIES

#View All Employee Records
select * from emp;
/*
101	Rajaram Sundaram	sales	Sales Executive	M	2019-01-10	1980-01-16	12000.00	chennai	C	9988776655
102	Abinaya Krishnamoorthy	sales	Sales Executive	F	2021-02-15	1999-03-22	15000.00	chennai	T	8978675645
103	Naveen Chidambaram	accounts	Manager Manager	M	2023-01-19	1985-04-18	15000.00		R	8698756432
104	Shabeer Salman Khan	accounts	Junior Executive	M	2023-02-26	1990-06-14	10000.00	delhi	C	9089876776
105	Sureshkumar Venkatesan	sales	Sales Manager	M	2016-04-29	1999-07-31	38000.00	chennai	R	9887342312
106	Gayathri Srinivasan	IT	Developer Developer	F	2018-06-30	1980-12-11	60000.00	delhi	R	8923546123
107	Anu Rajagopal	IT	Testing Testing	F	2015-08-23	2003-09-10	12000.00	bangalore	I	7865321986
108	Ashokumar Maheswaran	IT	Testing Testing	M	2023-12-17	2001-06-15	12000.00		I	8900334455
109	Charles Joseph	sales	Sales Manager	M	2024-07-16	2000-05-05	38000.00	delhi	R	8971134231
110	Ashok Narayanan	IT	Developer Developer	M	2024-03-13	1999-08-23	45000.00	bangalore	R	9003276765
111	Annie David	accounts	Manager Manager	F	2024-02-21	1985-07-07	15000.00	delhi	R	9677254321
112	Kavya Rajkumar	sales	Sales Executive	F	2023-05-14	1989-11-27	12000.00	bangalore	I	8220797988
*/
 
#Scalar SubQuery

#Find Employees with Highest Salary
SELECT * FROM EMP WHERE SALARY =(SELECT MAX(SALARY) FROM EMP);#   SINGLE LINE SUB QUERY AND SCALAR  ,,,DYANMIC EXPRESSION OR SUB/NESTED QUERIES
#106	Gayathri Srinivasan	IT	Developer Developer	F	2018-06-30	1980-12-11	60000.00	delhi	R	8923546123

#List Employees Earning Above or Equal to Average Salary										  
SELECT * FROM EMP WHERE SALARY >=(SELECT AVG(SALARY) FROM EMP); 
/*
105	Sureshkumar Venkatesan	sales	Sales Manager	M	2016-04-29	1999-07-31	38000.00	chennai	R	9887342312
106	Gayathri Srinivasan	IT	Developer Developer	F	2018-06-30	1980-12-11	60000.00	delhi	R	8923546123
109	Charles Joseph	sales	Sales Manager	M	2024-07-16	2000-05-05	38000.00	delhi	R	8971134231
110	Ashok Narayanan	IT	Developer Developer	M	2024-03-13	1999-08-23	45000.00	bangalore	R	9003276765
*/

#Find Employees with Salary Between Minimum and Maximum
SELECT * FROM EMP WHERE SALARY <(SELECT MAX(SALARY) FROM EMP) AND SALARY >(SELECT MIN(SALARY) FROM EMP);
/*
101	Rajaram Sundaram	sales	Sales Executive	M	2019-01-10	1980-01-16	12000.00	chennai	C	9988776655
102	Abinaya Krishnamoorthy	sales	Sales Executive	F	2021-02-15	1999-03-22	15000.00	chennai	T	8978675645
103	Naveen Chidambaram	accounts	Manager Manager	M	2023-01-19	1985-04-18	15000.00		R	8698756432
105	Sureshkumar Venkatesan	sales	Sales Manager	M	2016-04-29	1999-07-31	38000.00	chennai	R	9887342312
107	Anu Rajagopal	IT	Testing Testing	F	2015-08-23	2003-09-10	12000.00	bangalore	I	7865321986
108	Ashokumar Maheswaran	IT	Testing Testing	M	2023-12-17	2001-06-15	12000.00		I	8900334455
109	Charles Joseph	sales	Sales Manager	M	2024-07-16	2000-05-05	38000.00	delhi	R	8971134231
110	Ashok Narayanan	IT	Developer Developer	M	2024-03-13	1999-08-23	45000.00	bangalore	R	9003276765
111	Annie David	accounts	Manager Manager	F	2024-02-21	1985-07-07	15000.00	delhi	R	9677254321
112	Kavya Rajkumar	sales	Sales Executive	F	2023-05-14	1989-11-27	12000.00	bangalore	I	8220797988
*/

#List Employees in Same Department as 'NAVEEN CHIDAMBARAM'
SELECT * FROM EMP WHERE DEPT IN (SELECT DEPT FROM EMP WHERE ENAME="NAVEEN CHIDAMBARAM");
/*
103	Naveen Chidambaram	accounts	Manager Manager	M	2023-01-19	1985-04-18	15000.00		R	8698756432
104	Shabeer Salman Khan	accounts	Junior Executive	M	2023-02-26	1990-06-14	10000.00	delhi	C	9089876776
111	Annie David	accounts	Manager Manager	F	2024-02-21	1985-07-07	15000.00	delhi	R	9677254321
*/

SELECT * FROM EINFO;
   
SELECT * FROM ECON;

#Retrieve Employee Record for EMPID 105
SELECT * FROM EINFO WHERE EMPID IN (105);
#105	Suresh Kumar	10	Sales Manager		2016-03-29	38000.00	100
   
#Vector SubQuery

#Filter ECON Records Matching 'LANDLINE' Type  
SELECT * FROM ECON WHERE TYPE IN (SELECT TYPE FROM ECON WHERE TYPE LIKE "%LANDLINE%");#VECTOR /MULTIPLE LINE SUB QUERIES
/*
105	4432567899	landline home
*/

  
#CORELATED SUB QUERIES

#Find Highest-Paid Employee(s) in Each Department
SELECT * FROM EMP E WHERE SALARY=(SELECT MAX(SALARY) FROM EMP WHERE DEPT=E.DEPT);
/*
103	Naveen Chidambaram	accounts	Manager Manager	M	2023-01-19	1985-04-18	15000.00		R	8698756432
105	Sureshkumar Venkatesan	sales	Sales Manager	M	2016-04-29	1999-07-31	38000.00	chennai	R	9887342312
106	Gayathri Srinivasan	IT	Developer Developer	F	2018-06-30	1980-12-11	60000.00	delhi	R	8923546123
109	Charles Joseph	sales	Sales Manager	M	2024-07-16	2000-05-05	38000.00	delhi	R	8971134231
111	Annie David	accounts	Manager Manager	F	2024-02-21	1985-07-07	15000.00	delhi	R	9677254321
*/

#TENSOR SUBQUERY

#Retrieve Top Earners from Each Department Using Tuple Comparison
SELECT * FROM emp WHERE (DEPT,SALARY) IN (SELECT DEPT,MAX(SALARY) FROM EMP GROUP BY DEPT);
/*
103	Naveen Chidambaram	accounts	Manager Manager	M	2023-01-19	1985-04-18	15000.00		R	8698756432
105	Sureshkumar Venkatesan	sales	Sales Manager	M	2016-04-29	1999-07-31	38000.00	chennai	R	9887342312
106	Gayathri Srinivasan	IT	Developer Developer	F	2018-06-30	1980-12-11	60000.00	delhi	R	8923546123
109	Charles Joseph	sales	Sales Manager	M	2024-07-16	2000-05-05	38000.00	delhi	R	8971134231
111	Annie David	accounts	Manager Manager	F	2024-02-21	1985-07-07	15000.00	delhi	R	9677254321
*/
      
#Exists
   
SELECT * FROM EINFO;
   
SELECT * FROM ECON;

#List Employees with Matching Records in ECON Table
SELECT ENAME FROM EINFO WHERE EXISTS (SELECT * FROM ECON WHERE EINFO.EMPID=ECON.EMPID );
/*
Rajaram
Rajesh Kumar
Naveen
Shabeer
Suresh Kumar
Kesavan
Ashok Kumar
Charles
*/
      
      
