
# Bangalore real estate price prediction using regression model

Bengaluru Real Estate Price Prediction is a data science project aimed at predicting housing prices in Bengaluru, India, based on various features such as location, square footage, number of bedrooms, and bathrooms. The project utilizes machine learning techniques to build a predictive model that can assist real estate stakeholders in estimating property prices accurately.


## Project Workflow:

* **Data Collection:** The project starts by collecting real estate data from Bengaluru, including information on property features and prices.
* **Data Exploration:** Exploratory data analysis (EDA) is performed to understand the dataset's structure, identify patterns, and gain insights into the relationships between different variables.
* **Data Cleaning:** Data cleaning involves handling missing values, removing irrelevant columns, and addressing outliers to ensure data quality.
* **Feature Engineering:** Features such as price per square foot are engineered to enhance the predictive capabilities of the model.
* **Model Building:** Several machine learning algorithms, including linear regression, decision tree regression, random forest regression, AdaBoost regression, and support vector regression, are evaluated to determine the best-performing model.
* **Model Evaluation:** The performance of each model is evaluated using metrics such as R-squared, root mean squared error (RMSE), and mean absolute error (MAE).
* **Predictive Analysis:** Once the best model is selected, it is used to predict housing prices for new data points based on their features.
* **Exporting Model:** The final trained model is exported and saved using the Joblib library for future use.

## Usage:
- **Predicting Prices:** Users can input property features such as location, square footage, number of bedrooms, and bathrooms to get an estimated price prediction for a property in Bengaluru.
- **Exported Model:** The trained model is available for download and can be integrated into other applications or used for further analysis.

## Required Library
- Numpy
- Pandas
- Matplotlib
- Seaborn
- Scikit-learn
- Joblib