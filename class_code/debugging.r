# Debugging helps in finding the bugs in the code
# one need to stop the code at the point where you suspect the problem

#options(error = browser())
# Stopping at a line
 
n<- 10
x<- 0
for(i in 1:n) {
  
 x<- x + i/(i-2) 
}

#Browse indicates that you’re inside the R environment browser.
#Debugging commands
#Command	Shortcut	Description
#n or Enter	F10	Execute next statement
#s	Shift+F4	Step into function
#f	Shift+F6	Finish function/loop
#c	Shift+F5	Continue running
#Q	Shift+F8	Stop debugging

# browse break point
calculate_sum<-function(x){
  sum = 0
  for(item in x)
  {
    sum<- sum + item
  }
  #browser()
  return(sum)
}

x <- 1:10
calculate_sum(x)

# Q.  put browse anywhere in the above code  to stop after
# 5 th  iteration

power_fn<- function(x, n){
    loop_times <- n    
    return(x^loop_times)
}

apply<-function(x, fn, n){
  y = vector(mode = "double", length = length(x))
  power <-n
  for(i in 1:length(x))
  {
    y[i] <- fn(x[i], power)
  }
  return(y)
}

z<-apply(1:10, power_fn, 3)
z
calculate_sqrt<-function(x){
  #@TODO remove sum
  sum1<-o
  for(item in x)
  {
    sum1<- sum1 + sqrt(item)
  }
  #browser()
  return(sum)
}

calculate_sqrt(1:10)
