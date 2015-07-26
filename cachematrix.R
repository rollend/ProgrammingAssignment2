## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  ##set the value of matrix
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  ##get the value of matrix
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  ##provide the list of functions
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ##get the solution of x
  m<-x$getmatrix()
  ##logic test
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  ##get the value of matrix x
  matrix<-x$get()
  ##get the solution
  m<-solve(matrix, ...)
  ##cache solution for x
  x$setmatrix(m)
  m
}
