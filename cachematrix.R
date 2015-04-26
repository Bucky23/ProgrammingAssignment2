## Cache the inverse of a matrix rather than computing it repeatedly
## These functions cache the inverse of a matric

## This function creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x= matrix()) {
        inv_x <- NULL
        set <- function(y) {
                x <<- y
                m <<- Null
        }
        get <- function() x
        setinv <- function(inv) inv_x <<- inv
        getinv <- function() inv_x
        list(set = set, get = get,
        setinv = setinv,
        getinv = getinv)
}

## Computes the inverse of the matric computed by makeCacheMatrix
## If the inverse has already been calculated then cacheSolve retrieves the inverse from the cache
cacheSolve <- function(x, ...) {
        inv_x <- x$getinv()
        if(!is.null(inv_x)) {
                message("getting cached matrix inverse")
                return(inv_x)
        }
        data <- x$get()
        inv_x <- solve(data, ...)
        x$setinv(inv_x)
        inv_x
}
