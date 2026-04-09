# crop-analysis-r
End-to-end data analysis using R with EDA, visualization, and regression modeling for crop recommendation

Overview

This project performs data analysis and regression modeling on an agricultural dataset to understand how soil nutrients and environmental factors influence crop growth.

The goal is to identify patterns and relationships that can help in crop recommendation systems.

📊 Dataset Information
Dataset Name: Crop Recommendation Dataset
Source: Kaggle
Observations: 2200
Features:
N (Nitrogen)
P (Phosphorus)
K (Potassium)
Temperature
Humidity
pH
Rainfall
Label (Crop Type)
🛠️ Tools & Technologies
R Programming
Data Cleaning & Preprocessing
Data Visualization
Statistical Analysis
Regression Modeling
🧹 Data Preprocessing
✅ No missing values found
✅ No duplicate values
✅ Outliers detected but retained (real-world data)
✅ Categorical variables converted to factors
📈 Exploratory Data Analysis (EDA)
Key Insights:
High variability in nutrients, especially Potassium (K)
Humidity mostly high (75%–100%), indicating tropical conditions
Rainfall varies significantly, supporting diverse crop types
pH ranges from acidic to alkaline, covering multiple soil types
📊 Visualizations

The project includes:

Histograms (distribution analysis)
Boxplots (outlier detection)
Bar charts (crop comparison)
Scatter plots (relationships)
3D scatter plots
Correlation heatmap
🔍 Correlation Analysis
Strong positive correlation between:
Phosphorus (P) & Potassium (K): 0.736
Weak correlation between:
Temperature & Rainfall
pH & Temperature
📉 Regression Analysis
🔹 Simple Linear Regression
Model: Predicting K using P

Equation:

K = -12.17 + 1.13 × P
R² = 0.542
Strong and statistically significant relationship
🔹 Multiple Linear Regression
Predicting K using multiple variables
R² = 0.642
Improved accuracy over simple regression
🌍 Key Findings
Dataset is highly structured and separable
Each crop occupies a unique environmental “niche”
Strong clustering based on:
Nutrients (N, P, K)
Climate (Temperature, Humidity, Rainfall)
Crop Categories Identified:
🌾 Wetland Crops: Rice, Jute
🌵 Dryland Crops: Mothbeans, Mungbeans
🌴 Tropical Crops: Coconut, Coffee
🎯 Applications
Crop recommendation systems
Soil nutrient management
Climate-based agricultural planning
Machine learning model training
📌 Conclusion

The dataset demonstrates that crop growth depends on a precise combination of soil nutrients and environmental factors rather than a single variable.

This makes it ideal for:

Predictive modeling
Smart agriculture solutions
🚀 Future Improvements
Add Machine Learning models (Classification)
Feature importance analysis
Deploy as a web-based recommendation system


👩‍💻 Author

Tashwita Kanse
