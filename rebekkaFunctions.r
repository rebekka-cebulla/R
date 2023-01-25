reminde_me <- function() {
  print("Things to do in nederland:")
  print("  Eat an Edammer cheese in Edam")
  print("  Drink a Juttertje on Texel")
  print("  Skating on the Grachtens of Amsterdam")
  print("  Driving with speed of 121 km/h on a netherlands highway")
}

cheat <- function(exercise="1")
{
  if (exercise=="1")
  {
    print("Exercise Q3.1.2:")
    print("")
    print("  t=read.csv(\"https://bit.ly/3GLVQ86\", header=TRUE)")
    print("  d=t$DATE")
    print("  temp=t$TMAX")
    print("  plot(t$DATE[t$DATE>1969], t$TMAX[t$DATE>1969], main=\"Temperatures\", xlab=\"Years\", ylab=\"Temperasture in C\", pch=19)")
  }
  
  if (exercise=="2")
  {
    #install.packages("ggplot2")
    print("Exercise Q3.1.3:")
    print("")
    print("  library(ggplot2)")
    print("  library(titanic)")
    print("  df=length(c(titanic_train$Survived[titanic_train$Sex==\"female\" & titanic_train$Survived==\"0\"]))")
    print("  af=length(c(titanic_train$Survived[titanic_train$Sex==\"female\" & titanic_train$Survived==\"1\"]))")
    print("  dm=length(c(titanic_train$Survived[titanic_train$Sex==\"male\" & titanic_train$Survived==\"0\"]))")
    print("  am=length(c(titanic_train$Survived[titanic_train$Sex==\"male\" & titanic_train$Survived==\"1\"]))")
    print("  df2 <- data.frame(status=rep(c(\"death\",\"alive\"), each=2), sex=rep(c(\"female\", \"male\"),2), passenger=c(df,af,dm,am))")
    print("  ggplot(data=df2, aes(x=sex, y=passenger, fill=status)) + geom_bar(stat=\"identity\")")
  }
  
  if (exercise=="3")
  {
    #install.packages("ggplot2")
    print("Rxercise Q3.1.6:")
    print("")
    print("  library(ggplot2)")
    print("  max_weight=c()")
    print("  max_weight=append(max_weight,ChickWeight$weight[ChickWeight$Time==21 & ChickWeight$Chick==1])")
    print("  max_weight=append(max_weight,ChickWeight$weight[ChickWeight$Time==21 & ChickWeight$Chick==20])")
    print("  max_weight=append(max_weight,ChickWeight$weight[ChickWeight$Time==21 & ChickWeight$Chick==3])")
    print("  max_weight=append(max_weight,ChickWeight$weight[ChickWeight$Time==21 & ChickWeight$Chick==40])")
    print("  max_weight=append(max_weight,ChickWeight$weight[ChickWeight$Time==21 & ChickWeight$Chick==5])")
    print("  df <- data.frame(chick=c(\"1\",\"20\",\"3\",\"40\",\"5\"),max_weight)")
    print("  ggplot(data=df, aes(x=chick, y=max_weight)) + geom_bar(stat=\"identity\")")
  }
}
