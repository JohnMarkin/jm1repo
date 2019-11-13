## Put comments here that give an overall description of what your
## functions do

##Calculates the Inverse of an Invertible matrix

## Write a short comment describing this function

##  makeCacheMatrix creates a special "matrix" object that can cache the 
##  the inverse of a matrix 
## 
makeCacheMatrix <- function(x = matrix()) {
  m<- NULL ## m will represent the matrix inverse. We initially set it to null 
  set <- function(y){
    x <<- y    ## This sets value of Matrix
    m<<- NULL}
  get<- function() x  ## Gets value of matrix
  setsolve <- function(solve) m <<- solve ## This sets the value of 
  getsolve <- function() m 
  list( set=set ,get=get,setsolve = setsolve,getsolve = getsolve) 
  ## We create a list to hold information about matrix and inverse this allows 
  ## use of $ operator
}



## Write a short comment describing this function
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## Takes  makeCacheMatrix() as input
  ## We select the inverse of the matrix and assign to m 
  ## Check if m is not empty then inverse has already been calculated and
  ## it retrieves inverse from cache 
  ## If empty it gets the data and using solve() assigns inverse to m 
  ## Prints m
  m <- x$getsolve() 
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  } 
  
  data <- x$get() 
  m <- solve(data, ...)
  x$setsolve(m)
  m
  
  
  
  

  
     
}
