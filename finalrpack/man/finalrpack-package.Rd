\name{finalrpack-package}
\alias{finalrpack-package}
\alias{finalrpack}
\docType{package}
\title{
Yield curve and LP solver
}
\description{
The package includes one function generating a plot for the yield curve with respect to different maturities of the bonds and returning sequence of yields. 

The package also contains one other function for linear programming. However, it requires installing packages("lpSolve") first.
}
\details{
\tabular{ll}{
Package: \tab rpack\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-12-07\cr
License: \tab GPL-3\cr
}

}
\author{
Shihong Li

Maintainer: Shihong Li <sli50@jhu.edu>
}
\references{
~~ Blackrock Group Final Report ~~
}

\keyword{ yield package }
\keyword{ linear programming }
\examples{
maturity =c(0.5,1,2,3,5,7,10)
yi = c(0.06,0.10,0.24,0.34,0.80,1.32,1.89) # 01/13/12 (percent)
yield(maturity,yi)  
%==> 
%0.07243039 0.09793760 0.20264286 0.36632576 0.81009579 1.30819028 1.89237733 
% Set up problem: maximize
%   x1 + 9 x2 +   x3 subject to
%   x1 + 2 x2 + 3 x3  <= 9
% 3 x1 + 2 x2 + 2 x3 <= 15
f.obj <- c(1, 9, 3)
f.con <- matrix (c(1, 2, 3, 3, 2, 2), nrow=2, byrow=TRUE)
f.dir <- c("<=", "<=")
f.rhs <- c(9, 15)
lpsolve ("max", f.obj, f.con, f.dir, f.rhs)
%return: Success: the objective function is 40.5 
}
