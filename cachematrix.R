## The functions that follow will 
##create a matrix and calculate the total
## I set the matrix of the function as 
##"x" and set the solve value of "d" 
## to NULL

makeCacheMatrix <- function(x = matrix()) {
d <- NULL
        set <- function(y) {
                x <<- y
                d <<- NULL
}
        get <- function() x
        setinverse <- function(inverse) V <<- inverse
        getinverse <- function() V
        list(set = set, get = get,
             setinverse = setinverse, 
             getinverse = getinverse)
}

## 'V' should now give us 
##the inverse of the matrix
cacheSolve <- function(x, ...) {
       V <- x$getinverse()
        if(!isnull(V)) {
                message("fetching inverse data")
                return(V)
}
data <- x$get()
        V <- inverse(data, ...)
        x$setinverse(V)
        V
}
