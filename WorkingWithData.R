#Working With Data in R ----


## Where is the data? ----
#Have to tell the computer where is my data

#### Absolute Path----
#The Absolute location of the file 
path.ab <- "C:\\Users\\victo\\WhatisR\\Learning R Survey (Responses) - Form Responses 1.csv"


#### Relative Path ----
#The relative location of the file assuming a starting point
getwd() #Get present working directory (starting point)
setwd("C:\\Users\\victo\\WhatisR") # I can set the working directory

#path assumes the start is the working directory
path.rel <- "Learning R Survey (Responses) - Form Responses 1.csv"


## Reading in Data ----

data.ab <- read.csv(path.ab)

data.rel <- read.csv(path.rel) #Reads in data and saves it to the data.rel variable

data.ab == data.rel #Checking is it the same?

rm(data.ab) #Removing data.ab from environment

## Examining Data ----

dim(data.rel) #Dimensions of the data rows columns

names(data.rel) #Name of the variables in the data

summary(data.rel) # Quick summary of all the variables 

str(data.rel) #Looking at the structure of the variable


### Subsetting a Dataframe  ----

####By numbers ----
#data.frame[rows,columns] #Way to subeset data.frames
data.rel[1:2, 1:3] #Looking at the first 2 rows and first 3 columns 

data.rel[,1] # blank will mean all. All rows and 1st column


data.rel[c(1,3), c(1,4)] #1st and 3rd row and 1st and 4th column

#### By Name ----

data.rel$Timestamp #Will grab all rows of this variable

data.rel[, "Timestamp"] #Will grab all rows of this variable


data.rel[c(1,3), c("Timestamp", "Year.Born")]#Grab 1st, 3rd row of 2 variables


#### Subset by condition ----
#Do this all the time

cond <- data.rel$Year.Born == 2000

data.rel[cond,]

cond.class <- data.rel$Classification == "Freshman"

data.rel[cond.class,]


## Graphing ----
View(data.rel)

### BarChart for classification
?barplot #The barplot function needs counts

counts <- table(data.rel$Classification) #Table function will count variables

barplot(counts, main ="Classification barchart") #we pass counts to barplot

### Plot Age vs COVID tolerance
?plot #What does the plot function need
plot(data.rel$Year.Born, data.rel$COVID.Risk.Tolerance)



## Modeling ----
#First ever model is a linear regression
?lm

lm.fit <- lm(COVID.Risk.Tolerance ~ Year.Born, data = data.rel)

summary(lm.fit) #Summary function can change depending on what is it fitting



