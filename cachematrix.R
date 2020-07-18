## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        minv <- NULL
        set <- function(y) {
                x <<- y
                minv <<- NULL
        #set values of the matrix
        }
        get <- function() x
        #get the values of the matrix
        setinverse <- function(inverse) minv <<- inverse
        #set the values of the mean
        getinverse <- function() minv
        #get the values of the mean
        list ( set = set, get = get,
               setinverse = setinverse, getinverse = getinverse )
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) { 
        minv <- x$getinverse()
        if(!is.null(minv)){
                message(" getting cached data")
                return(minv)
        }
        data <- x$get()
        minv <- solve(data, ...)
        x$setinverse(minv)
        minv
        ## Return a matrix that is the inverse of 'x'
}


cacheSolve(test)
