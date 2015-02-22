## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<-NULL # sets the value of m to NULL
  set<-function(y){ #set the value of the matrix
    x<<-y # caches the inputted matrix
    m<<-NULL # sets the value of m
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      m<-x$getmatrix() # run the getmatrix function to get the value of the input matrix
  if(!is.null(m)){ # check to see if cacheSolve has been run before
    message("getting cached data")
    return(m)
  }
  matrix<-x$get() 
  m<-solve(matrix, ...) # compute the value of the inverse of the input matrix
  x$setmatrix(m)
  m   ## Return a matrix that is the inverse of 'x'
}
