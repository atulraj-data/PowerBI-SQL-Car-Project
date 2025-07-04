# Drive Insights Dashboard – Car Sales & Service Analytics

An end-to-end Business Intelligence project analyzing car sales, insurance coverage, ownership trends, and service history using SQL and Power BI.

I transformed five raw Excel datasets into a single, analysis-ready table using SQL, then visualized the KPIs and business insights using Power BI.

---

## Objective

To build a centralized dashboard for automotive insights covering:

- Sales performance and revenue tracking  
- Service patterns and cost analysis  
- Insurance status overview  
- Owner-wise drilldowns  
- Fuel type and model preferences  

---

## Datasets Used

The following datasets were joined and transformed using SQL:

| Dataset              | Description                                 |
|----------------------|---------------------------------------------|
| Car_Data.csv          | Car model, brand, year, fuel type, etc.     |
| Insurance_data.csv    | Insurance provider, policy number, expiry   |
| Owners_data.csv       | Owner ID, name, city, contact info          |
| Sales_data.csv        | Sale price, sale date, buyer info           |
| Service_History.csv   | Service cost, date, and service center      |

---

## Tools & Technologies

- SQL Server – for data cleaning and relational joins  
- Power BI – for KPIs, dashboards, and interactive visuals  
- Excel / CSV – as raw dataset formats  

---

## Data Modeling (SQL)

Used LEFT JOIN to combine all five datasets into one unified table: `master_car_data`.

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














