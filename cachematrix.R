## Cache the inverse of a matrix rather than computing it repeatedly
## These functions cache the inverse of a matric

## This function creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x= matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- Null
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
        setmean = setmean,
        getmean = getmean)
}

## Computes the inverse of the matric computed by makeCacheMatrix
## If the inverse has already been calculated then cacheSolve retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
