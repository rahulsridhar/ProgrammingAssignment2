## makeCacheMatrix and cacheSolve are 2 functions that have been defined to
## 1)Create a special matrix object
## 2)Calculate and cache its inverse
## 3a)Retrieve the inverse from the cache (if it exists and the matrix hasn't been modified) or
## 3b)Calculate it again (if it doesn't exist or the matrix has been modified)

## makeCacheMatrix creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(matrixObject = matrix()) {
	#Initializing the inverse to NULL
	matrixInverse <- NULL
	
	#Populating the matrix with values from object y and re-initializing inverse 
	#to NULL since the matrix has been modified
	setMatrix <- function(y){
		matrixObject <<- y
		matrixInverse <<- NULL
	}
	
	#Retrieve the matrix
	getMatrix <- function() matrixObject
	
	#Cache the inverse of the matrix
	setInverse <- function(inverse) matrixInverse <<- inverse
	
	#Retrieve the inverse
	getInverse <- function() matrixInverse
	
	#Creating a list of all the functions that have been created within makeCacheMatrix
	list(setMatrix = setMatrix, getMatrix = getMatrix, 
	setInverse = setInverse, getInverse = getInverse)
	
	
}


## cacheSolve computes the inverse of the matrix returned by makeCacheMatrix.
## If the inverse has already been calculated and the matrix hasn't been changed,
## then cacheSikve retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
}
