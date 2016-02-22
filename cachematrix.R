## makeCacheMatrix is following


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setprime <- function(prime) p <<- prime
  getprime <- function() p
  list(set = set, get = get,
       setprime = setprime,
       getprime = getprime)
}

## cacheSolve is following

cacheSolve <- function(x, ...) {
  m <- x$getprime()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- sovlve(data, ...)
  x$setprime(m)
  m
}
