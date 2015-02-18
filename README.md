### Arturo Equihua - Programming Assignment 2 (R Programming)

### Assignment: Caching the Inverse of a Matrix

As per the instructions provided for the assignment, the following two
functions had been written:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

Both functions are created in the cachematrix.R file. The way the functions
can be tested is the following (just as an example):

> source("cachematrix.R")
> demomatrix = rbind(c(8,3,4),c(2,3,5),c(3,8,2))
> cacheddemo = makeCacheMatrix(demomatrix)
> inversedemo = cacheSolve(cacheddemo)
> inversedemo = cacheSolve(cacheddemo)

The last command should return a message stating that the inverse was obtained
from cache. The inversedemo variable contains the inverse of the matrix demomatrix.
