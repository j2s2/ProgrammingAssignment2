## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y=matrix()) {
    inv<<-NULL
    x<<-y
  }
  get<-function() x
  setinv<-function(i) inv<<-i
  getinv<-function() inv
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<-x$getinv()
  if (is.null(i)) {
    i<-solve(x$get())
    x$setinv(i)
  } else print("cached...")
  i
}
