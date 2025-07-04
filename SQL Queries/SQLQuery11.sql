Select Car.[Car_ID]
      ,[Brand]
      ,[Model]
      ,[Year]
      ,[Fuel_Type]
      ,[Transmission]
      ,[Color]
      ,[Owner_Type]
      ,[Mileage_kmpl]
      ,[Price_Lakh],
	  [Provider]
      ,[Policy_Number]
      ,[Expiry_Date]
      ,[Status],  [Owner_Name]
      ,[Contact]
      ,[City]
      ,[Purchase_Year],
	    [Sale_Price_Lakh]
      ,[Sale_Date]
      ,[Buyer_Name],
	  [Service_Type]
      ,[Service_Date]
      ,[Service_Cost]
      ,[Service_Center] into Master_car_data
	  from Car
LEFT JOIN Insurance
    ON Car.Car_ID = Insurance.CAR_ID
LEFT JOIN Owners
    ON Owners.CAR_ID = Car.Car_ID
LEFT JOIN Sales
    ON Sales.CAR_ID = Car.Car_ID
LEFT JOIN Service_History
    ON Service_History.CAR_ID = Car.Car_ID
-- updated for GitHub indexing
