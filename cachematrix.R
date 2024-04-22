## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function to create a matrix that caches its inverse
makeCacheMatrix <- function(x = matrix()) {
  invmatrix <- NULL
  
  set <- function(matrix) {
    x <<- matrix  
    invmatrix <<- NULL
  }

  get <- function() {
    x  
  }
 
  getInverse <- function() {
    if (!is.null(invmatrix)) {
      return(invmatrix)
    } else {
      invmatrix <<- solve(x)
      return(invmatrix)
    }
  }
  
  list(set = set, get = get, getInverse = getInverse)
}

## Write a short comment describing this function
## Function to calculate the inverse of a matrix using the cache
cacheSolve <- function(x, ...) {
  invmatrix <- x$getInverse()
  invmatrix
}
