USE [ASSIGNMENT_1]
GO

SELECT [Name]
      ,[year]
      ,[selling_price]
      ,[km_driven]
      ,[fuel]
      ,[seller_type]
      ,[transmission]
      ,[owner]
      ,[mileage]
      ,[engine]
      ,[max_power]
      ,[torque]
      ,[seats]
  FROM [dbo].[CAR DATA]

GO

--AN SQL QUERY TO READ CAR DATA
SELECT * 
FROM [dbo].[CAR DATA]

--AN SQL QUERY TO GET A COUNT OF TOTAL RECORDS
SELECT COUNT(*) AS total_records
FROM [dbo].[CAR DATA]

--AN SQL QUERY TO KNOW HOW MANY CARS WILL BE AVAILABLE IN 2023
SELECT COUNT(*) AS total_cars_2023
FROM [dbo].[CAR DATA]
WHERE year=2023;

--AN SQL QUERY TO KNOW HOW MANY CARS WILL BE AVAILABLE IN 2020, 2021 AND 2022
SELECT year, COUNT(*) AS total_cars
FROM [dbo].[CAR DATA]
WHERE year IN (2020, 2021, 2022)
GROUP BY year;

--AN SQL QUERY TO PRINT THE TOTAL OF ALL CARS BY YEAR
SELECT year, COUNT(*) AS total_cars
FROM [dbo].[CAR DATA]
GROUP BY year
ORDER BY year;

--AN SQL QUERY TO KNOW HOW MANY DIESEL CARS WILL THERE BE IN 2020
SELECT COUNT(*) AS total_diesel_cars_2020
FROM [dbo].[CAR DATA]
WHERE year=2020 and fuel = 'Diesel';

--AN SQL QUERY TO KNOW HOW MANY PETROL CARS WILL THERE BE IN 2020
SELECT COUNT(*) AS petrol_car_count
FROM [dbo].[CAR DATA]
WHERE year = 2020 AND fuel = 'petrol';

--AN SQL QUERY TO GIVE A PRINT OF ALL FUEL CARS (petrol,diesel, and CNG) come by all year
SELECT year, fuel,COUNT(*)
FROM [dbo].[CAR DATA]
WHERE fuel IN ('petrol', 'Diesel', 'CNG')
GROUP BY year, fuel
ORDER BY year


--AN SQL QUERY TO KNOW WHICH YEAR HAD MORE THAN 100 CARS
SELECT year, COUNT(*) AS total_cars
FROM [dbo].[CAR DATA]
GROUP BY year
HAVING COUNT(*) > 100
ORDER BY year;

--AN SQL QUERY TO GET ALL CARS COUNT DETAILS BETWEEN 2015 AND 2023
SELECT
year,
COUNT(*) AS car_count
FROM [dbo].[CAR DATA]
WHERE
year BETWEEN 2015 AND 2023
GROUP BY
year
ORDER BY
year;

--AN SQL QUERY TO GET ALL CARS DETAILS BETWEEN 2015 AND 2023
SELECT*
FROM [dbo].[CAR DATA]
WHERE year BETWEEN 2015 AND 2023;
