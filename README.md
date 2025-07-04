# Drive Insights Dashboard – Car Sales & Service Analytics

This project helps you understand car sales, insurance, ownership, and service history using SQL and Power BI. It turns raw data into a single, easy-to-analyze table and creates interactive dashboards for clear business insights.

---

## Project Overview

This dashboard answers important questions like:

- Which car models and brands sell the most?
- How do service costs compare by brand or fuel type?
- What is the status of insurance renewals?
- Who are the main owners, and what are their trends?
- How do fuel types and models affect sales and costs?

---

## Key Insights

- **Toyota and Hyundai lead in sales with lower service costs.**
- **Older cars (over 7 years) have the lowest insurance renewal rates.**
- **Delhi reported the highest average service cost.**
- **Diesel vehicles have higher service costs but longer ownership duration.**

---

## Datasets Used

Five datasets were joined and cleaned using SQL:

| Dataset              | Description                                   |
|----------------------|-----------------------------------------------|
| Car_Data.csv         | Car model, brand, year, fuel type, etc.       |
| Insurance_data.csv   | Insurance provider, policy number, expiry     |
| Owners_data.csv      | Owner ID, name, city, contact info            |
| Sales_data.csv       | Sale price, sale date, buyer info             |
| Service_History.csv  | Service cost, date, and service center        |

---

## Tools & Technologies

- SQL Server: For data cleaning and joining datasets
- Power BI: For creating dashboards and reports
- Excel/CSV: For raw data files

---

## Data Modeling (SQL)

All five datasets are combined into a single table called `master_car_data` using SQL. This makes it easy to create reports and dashboards in Power BI.

**SQL Example:**
```sql
SELECT 
  Car.[Car_ID], [Brand], [Model], [Fuel_Type], [Transmission],
  Insurance.Insurance_Status, Owners.Owner_ID, Sales.Sale_Price,
  Service_History.Service_Cost, Service_History.Service_Date
INTO master_car_data
FROM Car
LEFT JOIN Insurance ON Car.Car_ID = Insurance.CAR_ID
LEFT JOIN Owners ON Owners.CAR_ID = Car.Car_ID
LEFT JOIN Sales ON Sales.CAR_ID = Car.Car_ID
LEFT JOIN Service_History ON Service_History.CAR_ID = Car.Car_ID;
```

---

## Dashboard Features

The Power BI dashboard allows you to:

- Track sales by brand, model, and time period
- Analyze service costs and trends
- Monitor insurance status and renewals
- Drill down by owner or city
- Compare data by fuel type and other factors

---

## How to Use

1. **Prepare the Data**
   - Place all CSV files in your SQL Server.
   - Use the SQL script above to load and transform the data into `master_car_data`.

2. **Load into Power BI**
   - Connect Power BI to your SQL Server.
   - Import the `master_car_data` table and create your reports.

3. **Explore Insights**
   - Use the dashboard to filter, visualize, and understand the data.

---


## About Me

**Atul Raj Singh**  
Email: atulthakur7409@gmail.com  
[LinkedIn](https://www.linkedin.com/in/atulrajsingh)  


---











