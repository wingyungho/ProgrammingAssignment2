## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        in <- NULL
        
        
        # Setter(matrix)
        set <- function(y) {
                x <<- y
                in <<- NULL

}
        #getter (matrix)
        get <- function() x
        
        #setter(inverse)
        setin <- function(inverse) in <<- inverse
        
        #getter(inverse)
        getin <- function() in
        
        
        
        list(set = set, get = get, setin = setin, getin = getin)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
        in <- x$getin()
        
        
        # return inverse if it is already calculated.
        if(!is.null(in)) {
                message("getting cached data")
                return(in)
        }
        
        # calculate it if not
        data <- x$get()
        in <- slove(data, ...)
        
        
        # cache the inverse
        x$setin(in)
        in }
        
        ## Return a matrix that is the inverse of 'x'
}
