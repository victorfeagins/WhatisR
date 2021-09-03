#What are Packages ----
#They are functions that other people made and are made available for everyone
#Two packages that are widely used are dplyr and ggplot2

## Installing Packages----
install.packages("dplyr")
install.packages("ggplot2")


## Ways to use a functions packages ----
#library makes functions in a package available to be used 
library(dplyr) #Used for manipulating data.frames
library(ggplot2) #Used for creating graphs


## Using dplyr ----

### First we get data ----
df <- iris #iris data set is built into R

### Filtering data ----
#### Base R ----
df[df$Species == "setosa",] #looks at rows that are equal to setosa

#### Dplyr ----
filter(df, Species == "setosa") #Does same thing but with dplyr

### Selecting variables ----

#### Base R ----
df[,c("Petal.Length", "Sepal.Width")]

#### Dplyr ----

select(df, Petal.Length, Sepal.Width)

### Adding new variables ----

#### Base R ----

df["Sepal.Area"] <-  df$Sepal.Length * df$Sepal.Width


#### Dplyr ----

df <- mutate(df, Sepal.Area = Sepal.Length * Sepal.Width)


## The powerful pipe %>%  ----
#Pipe is a way to pass a functions output to another function
# The pipe comes from the magrittr but is no popular that other packages load the pipe
### Base R No pipe ----

df["Sepal.Area"] <-  df$Sepal.Length * df$Sepal.Width

df.edit <- df[df$Species == "setosa",]

df.edit <- df.edit[,c("Sepal.Length", "Sepal.Width", "Sepal.Area", "Species")]

pairs(df.edit)


### Dplyr Pipe ----

df %>% #Data
  mutate(Sepal.Area = Sepal.Length * Sepal.Width) %>% #Creating Sepal.Area
  filter(Species == "setosa") %>%  #Filtering rows
  select(Sepal.Length, Sepal.Width, Sepal.Area, Species) %>% #Selecting this variables
  pairs() #Using pairs function


## Using ggplot2 ----
#Ggplot2 is to make graphs.
#For simple plots it will be faster for base R
#For more complex plots ggplot will be better

### Scatter Plot ----

#### Using Base R ----
plot(df$Sepal.Length, df$Sepal.Width)


#### Using ggplot ----

ggplot(df, mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point()


### Boxplot ----
#### Using Base R ----
boxplot(df$Sepal.Area ~ df$Species)


#### Using ggplot ----
ggplot(df, mapping = aes(x = Species, y = Sepal.Area)) +
  geom_boxplot()


### Complex scatter plot

#### Base R ----
plot(df$Sepal.Length, df$Sepal.Width, col=as.factor(df$Species))
legend(7,4.3,unique(df$Species),
       col=1:length(df$Species),pch=1)


#### Using ggplot ----
ggplot(df, aes(Petal.Length, Sepal.Width, col = Species))+
  geom_point()


#This packages enhance base R functionality but other packages add features that base R does not have.

#Tip if you just need one function from a package and don't want to load the entire packages use this
#nameofpackage::function

dplyr::filter(df, Species == "setosa")

