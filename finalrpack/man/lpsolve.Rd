\name{lpsolve}
\alias{lpsolve}
\title{lpsolve
}
\description{
This function borrows the lp function from library and helps solve the linear programming problem in our project.
}
\usage{
lpsolve(direction = "min", objective.in, const.mat, const.dir, const.rhs)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{direction}{
Character string giving direction of optimization: "min" (default) or "max.".
}
  \item{objective.in}{
Numeric vector of coefficients of objective function.
}  
\item{const.mat}{Matrix of numeric constraint coefficients, one row per constraint, one column per variable.
} 
\item{const.dir}{Vector of character strings giving the direction of the constraint: each value should be one of "<," "<=," "=," "==," ">," or ">=". 
} 
\item{const.rhs}{Vector of numeric values for the right-hand sides of the constraints.
} 
}
\details{
This function directly calls the lp function in library.
}
\value{It returns the objective function value.
}
\references{
library("lpSolve")
}
\author{
Shihong Li, sli50@jhu.edu
}
\note{

}


\seealso{

}
\examples{
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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ linear programming }
