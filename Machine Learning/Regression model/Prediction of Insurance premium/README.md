
# Prediction of Insurance Premium using Regression model

This project aims to predict insurance premiums for customers based on various factors such as age, gender, BMI (Body Mass Index), classification, number of children, smoking habits, and region. The dataset used in this project contains information about these factors along with the corresponding insurance charges. The project involves several stages including data exploration, data cleaning, exploratory data analysis (EDA), univariate and bivariate analysis, feature engineering, preprocessing, model selection, model training, evaluation, and prediction.


## Key Steps in the Project:
**Data Importing and Exploration:** 
- Importing necessary libraries and the dataset.
- Exploring the structure and summary statistics of the dataset.
- Visualizing correlations between variables using a heatmap.
**Data Cleaning and Preprocessing:** 
- Handling missing values in the dataset.
- Treating outliers in numerical variables such as age, BMI, and insurance charges.
- Encoding categorical variables into numerical format using label encoding.
**Exploratory Data Analysis (EDA):**
- Conducting univariate and bivariate analysis to understand the distribution and relationships between variables.
- Visualizing categorical variables such as gender, smoker status, region, etc.
- Analyzing numerical variables like age, BMI, and insurance charges.
**Model Building and Evaluation:**

- Splitting the dataset into training and testing sets.
- Evaluating different regression models including Linear Regression, Decision Tree Regression, K-Nearest Neighbors (KNN), AdaBoost Regression, Random Forest Regression, and Support Vector Regression (SVR) using cross-validation.
- Selecting the best-performing model based on accuracy scores.
- Training the selected model on the training data and evaluating its performance on the test data.
- Assessing model accuracy using metrics like R-squared, mean absolute error, and mean squared error.
**Prediction and Exporting Model:**
- Making predictions on new data instances using the trained model.
- Exporting the trained model in a pickle format for future use.

## Conclusion:
- The project concludes with the successful prediction of insurance premiums using a Random Forest Regression model. The trained model can be deployed for real-world applications such as estimating insurance costs for new customers based on their demographic and health-related information. The project demonstrates the application of regression analysis in the insurance domain, offering insights into factors influencing insurance charges and facilitating informed decision-making for insurance providers and customers alike.