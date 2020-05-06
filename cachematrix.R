## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                    
  ##This will get the inverse of the matrix
                    inv=solve(x)
                    set=function(y){
                      x<<-y
                      
                    }
                    get<-function()x
                    setinverse<-function(inverse)inv<<-inverse
                    getinverse<-function()inv
                    list(set = set,get=get,setinverse=setinverse,getinverse=getinverse)
  ##This will the list that contains set,get,set inverse and get the inverse of the matrix                  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ##Get the inverse of the matrix
              inv=X$getiverse()
              if(!is.null(inv)){
                message("cached")
                return(inv)
   ##Display the cached message
              }
        mat=x$get()
        inv=solve(mat,...)
        x$setinverse(inv)
        inv
              ## Return a matrix that is the inverse of 'x'
}
