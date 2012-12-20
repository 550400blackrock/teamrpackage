  lpsolve=function(direction = "min", objective.in, const.mat, const.dir, const.rhs){
  require("lpSolve",character.only=TRUE)
  lpsolve=lp (direction, objective.in, const.mat, const.dir, const.rhs
            )
  return (lpsolve)}
