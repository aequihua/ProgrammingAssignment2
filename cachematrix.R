#-----------------------------
#  R Programming - Programming Assignment 2
#  Author: Arturo Equihua
#  Date : February 17th, 2015
#---------------------------------
#  This program implements a set of functions that allow the caching of
#  the inverse operation of a matrix. Caching means that the function 
#  detects if the inverse of the matrix has already been computed and, if so, 
#  it is not computed again.

## The function makeCacheMatrix creates a "cached matrix", that is, 
## a special structure that contains a standard matrix along with
## additional functions to store the inverse so that it can be retrieved
## without recalculation. The function contains 4 methods: get, set
## getinverse and setinverse:

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Given a parameter X that is a "cached matrix" obtained from
## the function above, the cacheSolve function calculates the inverse
## if invoked for the first time, and from the second time onwards it will
## retrieve the cached inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  # Calculate the inverse of the matrix
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
