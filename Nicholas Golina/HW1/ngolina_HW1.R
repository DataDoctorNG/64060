#Reading the Airbnb data

data_air <- read.csv("C:/Users/nicho/Google Drive/School/Graduate School/Kent State/Fall 2019/Machine Learning Fundamentals/HW/HW1/HW1.csv") 

View(data_air)

#Creating the Summary Statistics categorical includes counts for neighborhoods, neighborhood groups, etc
#Quantitative includes variables like price, reviews per month, etc.

summary(data_air)

#Transforming the last_review date variable to datetime format

data_air$last_review <- as.Date(data_air$last_review,'%m/%d/%Y') 

#Creating the scatterplot and histogram

plot(x=data_air$reviews_per_month, y=data_air$price, type='p', col='#ff0000', xlab='Number of Reviews', ylab='Price', main='Comparing Prices to Reviews Per Month for Air bnbs')


hist(data_air$number_of_reviews, 
     main="Histogram for Air bnb Reviews per Month", 
     xlab="Reviews per Month", 
     border="blue", 
     col="green",
     las=1, 
     breaks=5)