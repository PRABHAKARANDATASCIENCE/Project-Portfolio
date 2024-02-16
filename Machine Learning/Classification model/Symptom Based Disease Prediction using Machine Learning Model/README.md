
# Symptom Based Disease Prediction using Machine Learning Model

This project utilizes machine learning techniques, specifically decision tree and random forest classifiers, to predict the type of disease a person may have based on their symptoms. The project involves preprocessing the data, including performing exploratory data analysis. Two classification models are trained using a training dataset and then evaluated using a separate testing dataset. The performance of the models is assessed using classification reports and confusion matrices. Finally, the trained model is used to predict the disease based on a set of input symptoms. This project aims to demonstrate the effectiveness of machine learning in diagnosing diseases based on symptom patterns, potentially aiding in early detection and treatment.



1. **Importing Libraries:** The code begins by importing necessary libraries such as numpy, pandas, matplotlib, seaborn, and warnings.

2. **Reading Dataset:** Two datasets are read - one for training (`Training.csv`) and one for testing (`Testing.csv`).

3. **Data Preprocessing:** Several preprocessing steps are performed, including dropping unnecessary columns, handling missing values, and performing exploratory data analysis (EDA) using visualization techniques like count plots.

4. **Model Building:** Two classification models are trained - a Decision Tree Classifier (`DecisionTreeClassifier`) and a Random Forest Classifier (`RandomForestClassifier`) using the training data.

5. **Model Evaluation:** The trained models are evaluated using the testing data. Classification reports and confusion matrices are generated to assess the performance of the models.

6. **Predictions:** The trained Random Forest Classifier model is then used to predict the disease based on a set of input symptoms provided in the code.

7. **Output:** The output provides a description of the project and the prediction results based on the provided symptoms.

Overall, this code represents a simple machine learning project for disease prediction based on symptoms using decision tree and random forest classifiers.