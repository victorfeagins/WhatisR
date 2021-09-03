
# R Basics ----
# R is all about objects
#Let's learn the essential Data types

## Numeric ----
#Arithmetic Operators
50 + 10 #Add 
50 - 10 #Subtract
50 / 10 #Divide
50 * 10 #Multiply
2 ** 3  #Exponent




### Numeric Functions ----
#f(x) = y
round(50.70) #Round to nearest whole number

sqrt(4) #Taking the square root
log(2) # Taking the natural log

#You can also create your own functions
cube <- function(x){
  x**3
}
cube(2)


## Character ----
"Hello" 
"Dog"
'Cat'
'Neck Tie'
"Don't do that"


### Character Functions ----
nchar("Knit")
toupper("Knit")
tolower("Knit")

paste("I", "like", "knitting")




## Logic ----
#TRUE or FALSE
TRUE #Logic
FALSE

TRUE + TRUE #TRUE = 1
FALSE + FALSE #FALSE = 0

### Basic Logic Operators ----

10 > 1 #10 greater then 1?
10 < 1 #10 less then 1?

10 == 1 #10 equal to 1?
10 != 1 #10 not equal to 1?

"A" == "A"

"A" == "a"

!TRUE #Not TRUE
### Combining Logic Operators ----

TRUE | FALSE # TRUE or FALSE

10 > 1 | 10 < 1 #At least one true will be true


TRUE & FALSE # TRUE and FALSE

10 > 1 & 10 < 1 #At least one false will be false






## Vectors
#Combination individual objects
#Can do functions on each element
c(10.6, 50.4, 30.8)

round(c(10.6, 50.4, 30.8))

c("cat", "dog", "turtle")

toupper(c("cat", "dog", "turtle"))


## Assignment of variables 

NumVec <- c(10.6, 50.4, 30.8)

round(NumVec)


pets <- c("cats", "dogs", "turtles", "horses")

toupper(pets)

names <- c("Jimmy", "Carl", "Eric", "Sarah")
paste(names, "likes", pets)


### Indexing Vectors
length(names) #Length will count number of elements in a vector


names[1] #Grabs 1st element in vector
pets[-1] #Loses 1st element in vector

names[3:length(names)] #Grabs everything after 3rd element






