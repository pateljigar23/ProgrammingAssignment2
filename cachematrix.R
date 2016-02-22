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
