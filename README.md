
# Stroke Prediction Model

## Overview
According to the World Health Organization (WHO) stroke is the 2nd leading cause of death globally, responsible for approximately 11% of total deaths.  It has personally affected members of this Data Analytics team, which brings a personal motivation to learn more.


Doctors have described a stroke as an attack on the brain.  However, there are **two types very different types of stroke**: 

1. Ischaemic stroke (a blockage) and, 
2. Hemorrhagic stroke (a bleed)

![stroke1](./Images/TypesOfStroke2017.png)

Photo from [https://enableme.org.au/](https://enableme.org.au/Resources/Types-of-stroke)

**Disclaimer:** This dataset does not distinguish which type of stroke the obeserved patient suffered.


This project **hopes to answer the following questions**:

* What are the most important attributes in predicting stroke; who is most prone?
* What is the correlation, if any, between BMI and having a stroke?
* What is the correlation, if any, between smoking (or not) and having a stroke?
* Is one gender over the other more probable to having a stroke?

Ultimately, the goal is to build a machine learning model (classification algorithm)that can **predict the likelihood of someone having a stroke**, given specific factors, like gender, age, various diseases, and smoking status, **with an accuracy of over 80%**.  

## Data Source
This data source can be found on [kaggle.com](Data:https://www.kaggle.com/fedesoriano/stroke-prediction-dataset3) and was last updated on 01.26.2021.  

This dataset contains 5,000 records 11 input data points and 1 binary outcome: stroke (1) or no stroke (0):

1. id	
2. gender	
3. age	
4. hypertension	
5. heart_disease	
6. ever_married	
7. work_type	
8. Residence_type	
9. avg_glucose_level	
10. bmi	
11. smoking_status


## GitHub and Communication Protocol

### GitHub
In order to accomplish this massive task, this team will be utilizing GitHUb to collaborate.  In addition to our main (or master branch), this repository contains the following branches: 

* ```devin_branch```
* ```jackie_data_analytics```
* ```maggies_data_analysis```
* ```nazanin-data-analytics```

Each week, our team will have a minimum of 4 commits each week:



### Communication Protocol
In addition to utilizing GitHub and our Slack channel, this team will meet weekly during and/or before normal class times on **Wednesday evening** as well as via zoom as needed.

Each team member has a role to play and for **Week 1** they are: 

* **Circle Role (Database)**:  Nazanin 
* **Triangle Role (Machine Learning)**  Devin 
* **Square Role (GitHub)**: Maggie McPhail 
* **X Role (Technology)**: Jackie 


## Database

First step in creating this predictive model and getting the answers we are looking for, is to import, clean, and preprocess our dataset.  The following **technologies**, modules, and functions within **Python** will be used to prepare the dataset for modeling:

* pandas
* sklearn.model_selection: ```train_test_split```
* sklearn.preprocessing: ```StandardScaler``` 
* sklearn.preprocessing: ```OneHotEncoder```


## Machine Learning Model
Once the dataset is cleaned and transformed, we can start compiling, training, and evaluating the model.  
* tensorflow: keras

## Dashboard Presentation
The dashboard will be built using **Tableau**.  Look out for our findings in the coming weeks!


