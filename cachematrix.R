## Put comments here that give an overall description of what your
## functions do

## This is derived from the makeVector function from the example using the solve function rather than the mean function.

makeCacheMatrix <- function(x = matrix()) {
    
        m <- NULL
        set <- function(y) {
            x <<- y
            m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## This is derived from the cacheMean function from the example.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
        m <- x$getinverse()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
    
}
