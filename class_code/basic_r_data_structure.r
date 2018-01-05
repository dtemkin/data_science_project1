# for help in R type ? and function name at the prompt.

# Atomic vectors(numeric, character, logical)
v <- c(1.6, 2.1, 1.5, 1.9)

class(v)
length(v)

# one can associate name to it but it is optional
names(v) <- c("S1", "S2", "S3", "S4")

# integer vector

iv <- 1:5

# for more better control one can use seq
iv1<- seq(from = 1, to = 10, by =2)
#checkout ?seq for more comphrehensive usage

# Character vector
cv <- c("a", "ccc", "TCGA", "1")
length(cv)
mode(cv)

########## Logical Vectors ##########################
lv <- c(TRUE, FALSE, TRUE)
# They usually arise from comaprision operator
c(0, 1, 3) < 2

######### Restricting and subsetting vectors #########
iv[1:3]

# Negative integers remove the corresponding elements.
iv[-(1:3)]
# one can select using name attributs too
v
v["S2"]
v[c("S1", "S3")]

# one can use logical vector too to subset
v[c(TRUE, FALSE, TRUE)]

# once can use comparision operator to find the elements to
v[v==1.5]

########## Missing data ###############3
# missing data is recorded as NA. We have to be care full when using vectors
# with missing values.
mv <- c(4, 5, NA, NA)
mv == NA # be carefull here
# use is.na
is.na(mv)

mv == 4 # be careful
mv[mv == 4 & !is.na(mv)]

#### factor #####
# can be thought as enumeration as in c or c++
as.factor(c("1", "1", "2"))

#### list#####
aa <- list(c(1, 2), c("z", "ALN"), c(1, 2, 3.4, 5.6))
class(aa)

#### matrices ####

v1 <- 1:9  # a vector of length 9 = 3 x 3
m1 <- matrix(v1, nrow = 3, ncol = 3)
m1

nrow(m1)
ncol(m1)
dim(m1)

#? how to add names to row and columns


m1
m1[1,2]
m1[1:2, 1:2]

# ? how to get al lthe row for first 2 columns
rownames(m1) <- c("a", "b", "c")

# subsetting using logical operator
m1[m1 > 4]

# matrix operations
 4* m1

 w <- c(-1, -2, -3)
m1 *w 

m1 %*% w

################ data frames ##########3
df1 <- read.csv("train.csv")
class(df1)
dim(df1)
str(df1)
names(df1)
# how to find number of row and columns


# columns can be extracted using $
df1$Name[1:5]

# subsetting
df1[1:5, c("Survived", "Age")]

