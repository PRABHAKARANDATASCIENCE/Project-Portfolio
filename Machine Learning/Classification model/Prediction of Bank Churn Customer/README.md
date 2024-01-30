
#  Classification model to predict bank churn customers.

## Project Description:
The project aims to predict whether a bank customer is likely to churn (leave) or not based on various features such as credit score, geography, gender, age, tenure, number of products, balance, whether they have a credit card, whether they are an active member, and estimated salary. The dataset used in this project contains information about these features along with the target variable indicating whether the customer has exited the bank or not.

## Key Steps in the Project:
**Data Importing and Exploration:**

- Importing necessary libraries and the dataset.
- Exploring the structure and summary statistics of the dataset.
- Checking for missing values and handling them if necessary.
- Exploring correlations between variables.
**Data Cleaning and Preprocessing:**

- Handling missing values, if any.
- Standardizing the values in categorical columns like 'Geography' and 'Gender' for better model interpretation.
- Scaling numerical features to a standard range for better model performance.
**Exploratory Data Analysis (EDA):**

- Conducting univariate and bivariate analysis to understand the distribution and relationships between variables.
- Visualizing categorical and numerical features to gain insights.
**Model Building and Evaluation:**

- Splitting the dataset into training and testing sets.
- Comparing multiple classification models such as Logistic Regression, Decision Tree, Random Forest, SVM, KNN, AdaBoost, Naive Bayes, and a Stacking Classifier to identify the best-performing model.
- Training the selected model on the training data and evaluating its performance on the test data.
- Assessing model accuracy using metrics such as confusion matrix, recall, precision, F1-score, accuracy score, ROC-AUC curve, and ROC-AUC score.
**Prediction and Exporting Model:**

- Making predictions on new data instances using the trained model.
- Exporting the trained model in a pickle format for future use.

## Conclusion:
- The project concludes with the successful creation of a classification model capable of predicting bank churn customers with high accuracy. The model can be deployed for real-world applications to identify customers at risk of leaving the bank, allowing the bank to take proactive measures to retain them. Additionally, the project demonstrates the application of various classification algorithms and model evaluation techniques, providing valuable insights into customer behavior in the banking sector.






