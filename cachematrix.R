## Put comments here that give an overall description of what your
## functions do

## inmat is a vector called "inverse of matrix" in below function. 

makeCacheMatrix <- function(x = matrix()) {
  inmat <- NULL ##inmat is an empty vector
  set <- function(y) {##set function set the value of the matrix
    x <<- y ##y is a value assigned to x that is different than original x (i.e. matrix)
    inmat <<- NULL ##inmat is an empty vector that is different than original inmat
  }
  get <- function() x ##get the matrix
  setinmat <- function(solve) inmat <<- solve ## Set the inverse of matrix using function solve and assign value to object inmat
  getinmat <- function() inmat ##get the inmat (i.e. inverse of matrix)
  list(set = set, get = get,
       setinmat = setinmat,
       getinmat = getinmat)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inmat <- x$getinmat()
  if(!is.null(inmat)) { ##If inverse of matrix is calculated.
    message("getting cached data") # it will give this mesage.
    return(inmat) # returns the inverse of matrix
  }
  data <- x$get()# otherwie gets the original matrix
  inmat <- solve(data, ...) ## calculate the inverse of matrix
    ## Return a matrix that is the inverse of 'x'
}
