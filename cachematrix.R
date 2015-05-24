## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   mi <- NULL
   get <- function() x #get is a function which returns matrix x
   set <- function(newm){
   x <<- newm
   mi <<- NULL
  
  } 
  
  getinverse <- function() mi  # returns the stored inverse of the matrix
  setinverse <- function(computedinverse){
    mi <<- computedinverse
  }
  
  list(get =get,set=set, getinverse = getinverse, setinverse=setinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mi <- x$getinverse()
   
  if(!is.null(mi))   #matrrix inverse already exists, just return
  {
    message("getting cached data")
    return(mi)
  }
  data <- x$get()
  #print(data)
  calculatedmi <- solve(data,...)
  x$setinverse(calculatedmi)
  calculatedmi
}
