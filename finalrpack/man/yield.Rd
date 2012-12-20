\name{yield}
\alias{yield}

\title{
calculate the yield curve
}
\description{
The function generates a plot for the yield curve with respect to different maturities of the bonds and returns a sequence of yields. 
}
\usage{
yield(m = NULL, y = NULL)
}
\arguments{
  \item{m}{
This is an input vector indicating the expected maturities of the bond. 
}
  \item{y}{
This is an input vector indicating the observed yield rates of the bond with respect to those maturities.
}
}
\details{
This function use polynomial regression to build connection betweeen bond yield and maturity. And it can be used to predict future bond yield.
}
\value{
First, this function will return a regression plot with maturity being the horizontal line and yield being the vertical line. Then the return value are the predicted bond yield rates. 
}
\references{
Please refer to the information in Blackrock Final Report
}
\author{
Shihong Li
}
\note{

}



\seealso{

}
\examples{
maturity =c(0.5,1,2,3,5,7,10)
yi = c(0.06,0.10,0.24,0.34,0.80,1.32,1.89) # 01/13/12 (percent)
yield(maturity,yi)   
##==> 
##0.07243039 0.09793760 0.20264286 0.36632576 0.81009579
##1.30819028 1.89237733 
## The function is currently defined as
function (m = NULL, y = NULL) 
{
    p = lm(y ~ poly(m, 3))
    plot(m, predict(p, data.frame(m)), type = "l", xlab = "Maturity (year)", 
        ylab = "Yield (\%)")
    return(predict(p, data.frame(m)))
  }
}
\keyword{ regression }
\keyword{ yield }
