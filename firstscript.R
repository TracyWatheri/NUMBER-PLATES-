

#Since cars are sold in series, I choose to work with the series KCA/T that contains numberplates 001-999. The code takes in two different number plates and calculates how many cars have been bought.
#Creating a dataframe of the series KCA/T.
KCA.T<-data.frame(cbind(number.plate=seq(1:999),condition=c("bought","notbought")))
head(KCA.T)
library(plyr)
#creating the function 
myfunction<-function(x,y)
{
  result<-count(KCA.T[(x:y),],"condition")
  print(result)
}
#calculating how many number plates have been bought between series KCA 050T to KCA 090T.
myfunction(50,90)

#calculating how many number plates have been bought between series KCA 001T to KCA 999T
myfunction(1,999)