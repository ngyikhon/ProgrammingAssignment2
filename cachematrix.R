## Put comments here that give an overall description of what your
## functions do

## The two function makeCacheMatrix

## Write a short comment describing this function

## makeCacheMatrix create a special object, which contain the 
## following function.
## set: set the value of the matrix
## get: get the value of the matrix
## setinverse: set the inverse of the matrix
## getinverse: get the inverse of the matrix

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
	     getinverse = getinverse
}


## Write a short comment describing this function

## cacheSolve calculate the inverse of the matrix
## of the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached matrix")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
