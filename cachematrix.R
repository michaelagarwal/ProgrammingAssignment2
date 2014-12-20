#########################################
##: Author: Pankaj "Michael" Agarwal
##: Date written: 12/20/2014
#######################################

#####################################
## My first function makeCacheMatrix:
## 1. Set and get Matrix
## 2. Set and get Inverse of a Matrix 
#####################################

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    ## Set the matrix
    set <- function(y) {
        x <<- y ## Store into cache
        m <<- NULL ## Store into cache
    }
    ## Get the matrix 
    get <- function() x
    ## Set the inverse of a matrix in cache
    setInverse <- function(Inverse) m <<- Inverse
    ## Get the inverse of a matrix
    getInverse <- function() m
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
