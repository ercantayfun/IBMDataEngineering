--Final Assignment sql codes

--MyDimDate table fieldnames

    --dateid 
    --year
    --month
    --monthname 
    --day 
    --weekday 
    --weekdayname 

CREATE TABLE MyDimDate (
    dateid INT PRIMARY KEY,
    year INT,
    month INT,
    monthname VARCHAR(20),
    day INT,
    weekday INT,
    weekdayname VARCHAR(20)
);


--MyDimWaste table fieldnames

    --wastetid
    --wastetype
    
    
CREATE TABLE MyDimWaste (
    wastetid INT PRIMARY KEY,
    wastetype VARCHAR(255)
);


