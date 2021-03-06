## Put comments here that give an overall description of what your
## functions do

## Esta funcion crea una matriz especial y calcula su inversa, lo que hace es lo siguiente:
##Establece el valor de la matriz
##Obtiene el valor de la matriz
##Establece el valor de la inversa de la matriz
##Obtiene el valor de la inversa de la matriz


makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  
  setmatrix<-function(solve) m<<-solve
  getmatrix<-function()m
  list(set=set, 
       get=get, 
       setmatrix=setmatrix, 
       getmatrix=getmatrix)
}


## Esta funcion calcula la inversa de la matriz creada en la funcion anterior, previo a eso verifica si ya ha sido 
##calculada la inversa, si es asi la obtiene de cache, caso contrario la calcula y la almacena en cache

cacheSolve <- function(x, ...) {
  m<-x$getsolve
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setsolve(m)
  m
  
}
