![logo](./Images/liquor_license.jpeg)
# Liquor Licenses and Close-Proximity Population Demographics

##Presentation

### [Click Here to access Google Sheets presentation](https://docs.google.com/presentation/d/16BIqBy9ejezUTJsVLJnAEyl2HWQhgAKd4O99gPBHUYY/edit#slide=id.p).

## Overview
The CDC publishes a fascinating dataset detailing the racial/ethnic percentages of persons living within **0.25 miles of an establishment with a liquor license**. Much research has been conducted to investigate the the relationship between proximity to liquor establsihments and demographics such as race and socioeconomic factors.

By layering additional demographic and socioeconomic data including income levels, poverty, unemployment, housing prices indicators, we can get a better picture of phenomenons that occur such outlets.

**This project hopes to answer the following questions**:

* Is there a racial or ethnic population more likely to live within a quarter-mile of a liquor licensed establishment?
* What is the racial or ethnic breakdown of populations within a quarter-mile of a liquor licensed establishment?
* Is there a correlation between income and proximity to an alcohol outlet?

Ultimately, **the goal is to build a machine learning model (using logistic regression) that can predict the likelihood of a liquor outlet is within a quarter-mile of a person's home based on their race/ethnicity and location.**

## Data Source
There are **4 datasets** that will be used to build this model and create visualizations:

1. The first, and primary, dataset comes from [HealthData.gov](https://healthdata.gov/dataset/population-percentage-within-quarter-mile-alcohol-outlets). This file contains 2014 data for the state of California of population demographics of residents living within a quarter-mile of an alcohol establishment: ```population_pct_within_qrt_mile_alcohol.csv```
 
1. This dataset, from the [HealthData.gov](https://healthdata.gov/dataset/population-percentage-within-quarter-mile-alcohol-outlets), provides county-level data regarding persistent poverty, metro vs non-metro status, low education status, retirement destination, as well as other descriptive, binary factors. ```2015CountyTypologyCodes.csv```
 
1. The file ```personal_income_2014.csv``` also comes from [Bureau of Economic Analysis](https://apps.bea.gov/regional/histdata/) details the per capita personal income by county.

2. The final dataset from the [U.S. Bureau of Labor Statistics](https://www.bls.gov/lau/) , ```UnemploymentReport_CA.csv```, trends out unemployment rate from 2011 through 2019 by County detailing the median house price for that county.

All of these datasets have been filtered to focus on **California and its County-level information targeting 2014**.

### Database
First step in creating this predictive model and getting the answers we are looking for, is to import the raw data into **SQL** and create a schema outlining the table structure and interconnections.

This is done using **PostGres** and **SQL**; ERD schematic below:

![ERD](./Images/erd.png)

Once the team is ready to start analyzing, the data is connected directly to a **Python Notebook** to be read in using importing ```create_engine``` from **sqlalchemy**.

At which point we are ready to clean, transform, and preprocess our dataset. That's where the fun begins!

## Machine Learning Model
The following technologies, modules, and functions within Python will be used to read in, prepare and transform the data:

* pandas
* sklearn
* model_selection: ```train_test_split```
* preprocessing: ```StandardScaler```
* preprocessing: ```OneHotEncoder```

Once the dataset is cleaned and transformed, we can start compiling, training, and evaluating the model. A **Logistic Regression model** will be employed as the predicted outcome of this model will be in the form of a categorical dependent variable.

The following imports will be called:

* sklearn.linear_model: LinearRegression
* sklearn.metrics: balanced_accuracy_score
* sklearn.metrics: mean_squared_error

Our input factors (y) will include:

* ```race_eth_code```
* ```race_eth_name```
* ```county_name```
* ```region_name```
* ```region_code```
* ```num_people_qrt```
* ```tot_people```
* ```pct_of_total```
* ```pi_per_cap_income```
* ```pi_total_income```
* ```pi_popultaion```
* ```unemp_2014```
* ```unemp_median_house_price```
* ```typ_metro_status```
* ```typ_low_ed```
* ```typ_low_employment```
* ```typ_Pop_loss_2010```
* ```typ_retirement```
* ```typ_poverty```
* ```typ_child```

Our **target or (X)** will be the percentage of the population, ```pct_of_total```, within a quarter mile of the alcohol outlet.

## Dashboard Presentation
The dashboard will be built using **Tableau**. Visualizations to tell this story will include graphs, heat maps, and prediction results.

*Link to Dashboard can be found in presentation link above.*

## GitHub and Communication Protocol

#### GitHub
In order to accomplish this massive task, this team will be utilizing GitHub to collaborate. In addition to our main (or master branch), this repository contains the following branches organized by function rather than team member for clarity:

* ```dashboard```
* ```data_analysis``` 
* ```data_cleaning``` 
* ```machine_learning``` 

An additional branch was employed as our tasks change throughout this process:

* ```final_code```: for code peer reviews 

Each team member has a role to play and for **Week 3**  they are:

* Circle Role (```dashboard```): Nazanin Tavakoli 
* Square Role (```final_code```): Jackie Chitsanga
* Triangle Role (```data_analysis```): Maggie McPhail
* X Role (```machine_learning```): Devin Hollister

All Team members are responsibile for continued improvement of machine learning and data cleaning.

Each week, our team will have a minimum of 4 commits per member.  For **Week 3**:
![commits](./Images/week3_commits.png)

#### Communication Protocol
In addition to utilizing **GitHub** and our **Slack** channel, this team will meet weekly during and/or before normal class times on **Monday** and **Wednesday** evenings as well as via **Zoom** as needed.

The code continues to be in a constant state of improvement and refactoring to make it more efficient; as such the code still lives in the branches.  The not quite ready-for-prime-time copies are located in the ```final_code``` branch to allow for peer review and additional edits until they are production ready.