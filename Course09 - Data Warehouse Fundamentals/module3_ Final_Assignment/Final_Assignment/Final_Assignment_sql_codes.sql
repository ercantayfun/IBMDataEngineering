--Final Assignment sql codes

--MyDimDate table fieldnames
    --date_id
    --date 
    --year
    --quarter
    --quarter_name
    --month
    --monthname 
    --day 
    --weekday 
    --weekdayname 

CREATE TABLE MyDimDate (
    date_id INT PRIMARY KEY  NOT NULL,
    date DATE NOT NULL,
    year INT,
    quarter INT,
    quarter_name CHAR(2),
    month INT,
    monthname VARCHAR(20),
    day INT NOT NULL,
    weekday INT NOT NULL,
    weekday_name VARCHAR(20)
);



--MyDimWaste table fieldnames
    --wastet_id
    --waste_type
    --waste_tons
    
    
CREATE TABLE MyDimWaste (
    wastet_id INT PRIMARY KEY,
    waste_type VARCHAR(255),
    waste_tons FLOAT(2) NOT NULL
);


--MyDimZone table fieldnames
    --zone_id
    --zone_name
    --city

CREATE TABLE MyDimZone (
    zone_id INT PRIMARY KEY,
    zone_name VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL
);


--MyFactTrips table fieldnames
    --trip_id
    --waste_id
    --zone_id
    --date_id
    --waste_tons

CREATE TABLE MyFactTrips (
    trip_id INT NOT NULL PRIMARY KEY,
    waste_id INT REFERENCES MyDimWaste(waste_id),
    zone_id INT REFERENCES MyDimZone(zone_id),
    date_id INT REFERENCES MyDimDate(date_id),
    waste_tons FLOAT(2)
);




--DimTruck table fieldnames
    --truck_id
    --truck_type
    
    
CREATE TABLE DimTruck (
    truck_id INT PRIMARY KEY,
    truck_type VARCHAR(255)
);



--DimStation table fieldnames
    --station_id
    --city
    
    
CREATE TABLE DimStation (
    station_id INT PRIMARY KEY,
    city VARCHAR(100) NOT NULL
);


--FactTrips table fieldnames
    --trip_id
    --date_id
    --station_id
    --truck_id
    --waste_collected

CREATE TABLE FactTrips (
    trip_id INT NOT NULL PRIMARY KEY,
    date_id INT REFERENCES DimDate(date_id),
    station_id INT REFERENCES DimStation(station_id),
    truck_id INT REFERENCES DimTruck(truck_id),
    waste_collected FLOAT(2)
);


#13

SELECT
    f.station_id,
    t.truck_type,
    SUM(f.waste_collected) AS total_waste_collected
FROM
	facttrips f
INNER JOIN
	 dimtruck t 
	 ON f.truck_id=t.truck_id  
GROUP BY GROUPING SETS (station_id, truck_type)
ORDER BY
    f.station_id,
    t.truck_type;



#14

SELECT year, city, f.station_id, SUM(f.waste_collected) AS total_waste_collected
FROM
	facttrips f
LEFT JOIN dimstation AS s ON f.station_id=s.station_id
LEFT JOIN dimdate AS d ON f.date_id=d.date_id
GROUP BY ROLLUP(f.station_id, city, year);