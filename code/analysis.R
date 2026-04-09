#  Crop Recommendation Analysis using R

#  Set working directory (change path as per your system)
setwd("C:/Users/Admin/Desktop/PROJECT")

#  Load dataset
data <- read.csv("crop_recommendation.csv", stringsAsFactors = FALSE)

#  View data
head(data)
str(data)

#  Check missing values
colSums(is.na(data))

#  Remove missing values (if any)
data <- na.omit(data)

#  Check duplicates
sum(duplicated(data))

#Convert character columns to factor
data[sapply(data, is.character)] <- lapply(data[sapply(data, is.character)], as.factor)

# Check structure again
str(data)

# ==============================
#  DESCRIPTIVE STATISTICS
# ==============================

# Mean
mean(data$N)
mean(data$P)
mean(data$K)
mean(data$temperature)
mean(data$humidity)
mean(data$ph)
mean(data$rainfall)

# Median
median(data$N)
median(data$P)
median(data$K)

# Mode function
getmode <- function(x) {
  uniq <- unique(x)
  uniq[which.max(tabulate(match(x, uniq)))]
}

# Mode
getmode(data$N)
getmode(data$P)
getmode(data$K)
getmode(data$temperature)
getmode(data$humidity)
getmode(data$ph)
getmode(data$rainfall)

# Range
range(data$N)
range(data$P)
range(data$K)
range(data$temperature)
range(data$humidity)
range(data$ph)
range(data$rainfall)

# Variance
var(data$N)
var(data$P)
var(data$K)
var(data$temperature)
var(data$humidity)
var(data$ph)
var(data$rainfall)

# Standard Deviation
sd(data$N)
sd(data$P)
sd(data$K)

# Summary
summary(data)

# ==============================
# VISUALIZATION
# ==============================

# Histogram
hist(data$rainfall, main="Rainfall Distribution", xlab="Rainfall")

# Boxplot
boxplot(data$N, main="Nitrogen Distribution")

# Scatter Plot
plot(data$P, data$K, main="P vs K", xlab="Phosphorus", ylab="Potassium")

#  CORRELATION
cor_matrix <- cor(data[,1:7])
print(cor_matrix)

# Heatmap
heatmap(cor_matrix)

#  REGRESSION

# Simple Linear Regression
model <- lm(K ~ P, data = data)
summary(model)

# Plot regression
plot(data$P, data$K, main="Regression: P vs K")
abline(model, col="red")

# Multiple Linear Regression
model_multi <- lm(K ~ N + P + temperature + humidity + ph + rainfall, data = data)
summary(model_multi)
