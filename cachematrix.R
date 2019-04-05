## Cache Inverse of matrix
## Function to create object and cache inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
  inv<-NULL
  #setting matrix
  set <-function(y)
  {
    x<<-y
    inv<<-NULL
    
  }
  get<-function()x
  x<<-y
  setinverse<-function(solveMatrix)inv<<-solveMatrix
  getiverse<-function()inv
  list(set=set,get=get,setinverse=setinverse,getnverse=getinverse)

}


## Computes inverse retuned above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinverse()
  if(!is.null(inv))
  {
    message("getting data cached")
return(inv)
    
  }
  data<-x$get()
  inv<-solve(data)
  x$setinverse(inv)
  inv
}

