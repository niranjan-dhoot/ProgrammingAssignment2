## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
This function creates a matrix which can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL

    set <- function(k) {
        x <<- k
        inv <<- NULL
    }

    get <- function() {
        x
    }

    setInverse <- function(inv) {
        inverse <<- inv
    }

    getInverse <- function() {
        inv
    }

    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
This function computes the inverse of the matrix if already not computed

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()

        if (!is.null(inv)) {
            return(inv)
        }

        contents <- x$get()
        inv <- solve(contents, ...)
        x$setInverse(inv)
        inv
}
