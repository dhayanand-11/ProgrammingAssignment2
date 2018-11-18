## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    inv = NULL
    setm <- function(y)
    {
        x <<- y
        inv <<- NULL
    }
    
    getm <- function()  x
    seti <- function(i)
        inv <<- i
     geti <- function() inv
    list(setm = setm, getm = getm,
         seti = seti,
         geti = geti)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    i <- x$geti()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$getm()
    i <- solve(data, ...)
    x$seti(i)
    i
}
