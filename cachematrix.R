#########################################
##: Author: Pankaj "Michael" Agarwal
##: Date written: 12/20/2014
##: Course: Language R
##: Assignment #: 2
#######################################

#####################################
## My first function makeCacheMatrix:
## 1. Set and get Matrix
## 2. Set and get Inverse of a Matrix 
## tested with:
## x <- matrix(rnorm(16), 4)
## y <- makeCacheMatrix(x) 
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
    ## Return list below
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


#####################################
## My second function cacheSolve:
## Get Inverse of a Matrix from cache if exist otherwise calculate and 
## set inverse of a matrix
## tested with:
## z <- cacheSolve(y) ## Calculate it first time
## z <- cacheSolve(y) ## Get from cache second time
## z %*% x ## Multiply Inverse of Matrix with itself to Double Check
#####################################

cacheSolve <- function(x, ...) {
    ## check to see if inverse of a matrix exist in cache
    m <- x$getInverse()
    
    if(!is.null(m)) {
        message("Getting cached data")
        return(m)
    }
    ## else calculate Inverse of a matrix
    else {
        data <- x$get()
        message("Calculating inverse of a matrix")
        m <- solve(data, ...)
        x$setInverse(m)
        ## Return inverse of a matrix
        m 
    }
}
