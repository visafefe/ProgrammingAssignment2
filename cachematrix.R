## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{
  # the object mat represent the matrix
  mat <- NULL
   setmat <- function(y)
   {
     x <<- y
     mat <<- NULL
   }
   getmat <- function() x

   setmatinv <- function(solve) mat <<-solve
   getmatinv <- function() mat
   
    # below the list returned
  list(setmat = setmat , getmat = getmat , setmatinv = setmatinv , getmatinv = getmatinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
        ## Return a matrix that is the inverse of 'x'
   mat <- x$getmatinv()
   if(!is.null(mat)) 
   {
    message("getting cached data")
     return(m)
   }
   data <- x$getmat()
   mat <- solve(data, ...)
   x$setmatinv(mat)
   mat
}
