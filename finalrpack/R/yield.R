yield=function(m=NULL,y=NULL)
{ 
  p = lm(y~poly(m,3))
  plot(m,predict(p,data.frame(m)),type="l",xlab="Maturity (year)",ylab="Yield (%)")  #fitted value for different time in a year
  return(predict(p,data.frame(m)))
}
