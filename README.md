# ELEVATELABS_TASK6
🚀 SQL Subqueries 

This repository demonstrates advanced SQL subquery techniques using a structured employee dataset. Each query is crafted to highlight a specific subquery type, with practical examples and expected outputs.

📊 Tables Used
🧑‍💼 EMP – Core employee data (name, department, role, salary, etc.)

📋 EINFO – Extended employee info (joining date, salary, etc.)

☎️ ECON – Contact details categorized by type (mobile, landline)

🧠 Subquery Types Covered
🔹 Scalar Subqueries
Used for single-value comparisons. Examples:

🏆 Highest salary

📈 Above or equal to average salary

🎯 Salary between minimum and maximum

🔹 Vector Subqueries
Used for multi-value filtering. Example:

☎️ Filter ECON records by contact type (e.g., "landline")

🔹 Correlated Subqueries
Subqueries that depend on the outer query. Example:

🧑‍💼 Top earners per department

🔹 Tensor Subqueries
Tuple-based comparisons across multiple columns. Example:

🧮 Match (DEPT, SALARY) to retrieve top earners

🔹 EXISTS Clause
Checks for the existence of related records. Example:

🔍 Employees with matching records in ECON

🔹 IN Clause with Subquery
Filters based on dynamic values from another query. Example:

🧑‍🤝‍🧑 Employees in the same department as "NAVEEN CHIDAMBARAM"

✅ How to Use
🧪 Run queries in any SQL-compatible environment

📂 Use the provided EMP, EINFO, and ECON tables

🔎 Validate results using expected outputs included in comments
