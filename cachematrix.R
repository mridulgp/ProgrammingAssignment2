## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL  #initialize inverted matrix
	
	set <- function(y) {
		x <<- y
		m <<- NULL
	}

	get <- function() {
		x
	}

	# Set inverse of the matrix
	setInverse <- function() {
		m <<- inverse
	}

	# Get inverse of the matrix
	getInverse <- fuction() {
		m
	}

	list(set = set, get = get,
	setInverse = setInverse,
	getInverse = getInverse)	
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getInverse()

	## Return cached matrix
	if( !is.null(m) ) {
		message("getting cached data")
		return(m)
	}

	## Get the matrix from object
	data <- x$get()

	## Calculate the inverse using matrix multiplication
	m <- solve(data) %*% data

	## Set the inverse to the object
	x$setInverse(m)

	## Return the matrix
	m
}
