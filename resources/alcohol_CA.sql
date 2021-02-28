
-- Creating tables for Population within 1/4 mile of Alcohol Outlet
CREATE TABLE alcohol_qrt_mile (
	Indicator_ID VARCHAR,	
	ind_definition VARCHAR,	
	reportyear VARCHAR,
	race_eth_code VARCHAR(1),	
	race_eth_name VARCHAR,
	geotype VARCHAR,
	geotypevalue VARCHAR,
	geoname VARCHAR,
	county_name VARCHAR,	
	county_fips_id VARCHAR,
	region_name	VARCHAR,
	region_code	VARCHAR,
	license_type VARCHAR,
	num_people_qrt INT,	
	tot_people	INT,
	pct_of_total DECIMAL
	);

SELECT * FROM alcohol_qrt_mile;

-- Creating tables for County Level personal income
CREATE TABLE personal_income (
	county_fips_id VARCHAR,
	county_name VARCHAR,
	region_code	VARCHAR,	
	table_CA VARCHAR,
	lineCode VARCHAR,	
	per_capita_income INT,
	total_income INT,
	population INT,
	PRIMARY KEY (county_fips_id)
	);
	
SELECT * FROM personal_income;

-- Creating tables for County Level unemployment 2011-2019 median house value
CREATE TABLE unemployment (
	county_fips_id VARCHAR,
	county_name VARCHAR,	
	year_2011 VARCHAR (4),	
	unemp_2011 DECIMAL,
	year_2012 VARCHAR (4),	
	unemp_2012 DECIMAL,
	year_2013 VARCHAR (4),	
	unemp_2013 DECIMAL,
	year_2014 VARCHAR (4),	
	unemp_2014 DECIMAL,
	year_2015 VARCHAR (4),	
	unemp_2015 DECIMAL,
	year_2016 VARCHAR (4),	
	unemp_2016 DECIMAL,
	year_2017 VARCHAR (4),	
	unemp_2017 DECIMAL,
	year_2018 VARCHAR (4),	
	unemp_2018 DECIMAL,
	year_2019 VARCHAR (4),	
	unemp_2019 DECIMAL,
	median_house_tag VARCHAR,
	median_house_price DECIMAL,
	median_house_pct DECIMAL,
	PRIMARY KEY (county_fips_id)
	);
SELECT * FROM unemployment;	

-- Creating tables for County Level industry and poverty
CREATE TABLE typology_CA (
	county_fips_id VARCHAR (4) NOT NULL,
	state_abbre VARCHAR (2),	
	county_name	VARCHAR,
	metro_status INT,
	economic_types VARCHAR (1),
	Economic_Type_Label	VARCHAR,
	Farming_2015 INT,	
	Mining_2015 INT,	
	Manufacturing_2015 INT,	
	Government_2015 INT,	
	Recreation_2015 INT,
	Nonspecialized_2015 INT,	
	Low_Education_2015 INT,	
	Low_Employment_Cnty INT,
	Pop_Loss_2010 INT,	
	Retirement_Dest_2015 INT,
	Persistent_Poverty_2013 INT,	
	Persistent_Child_Poverty_2013 INT,
	PRIMARY KEY (county_fips_id)
	);

SELECT * FROM typology_CA;

-- Creating tables for County Level Financial
CREATE TABLE earnings_2014_CA (
	county_fips_id VARCHAR,
	geoname VARCHAR,
	region_code	VARCHAR, 
	table_code VARCHAR,
	line_code VARCHAR,	
	industry_classification VARCHAR,	
	description VARCHAR,	
	dollar_amt_2014 INT
	);	

SELECT * FROM earnings_2014_CA;


