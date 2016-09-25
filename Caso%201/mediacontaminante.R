mediacontaminante <- function(directorio, contaminante, id = 1:332) {
  total <- 0
  dim <- length(id)+id[1]-1
  d <- id[1]
  suma <- 0
  divisor <- 0
  
  for (i in d:dim) {
    if (i < 100) {
      nombre <- paste("0",i,".csv",sep = "")}
    if (i<10) {
      nombre <- paste("00",i,".csv",sep = "")}
    if (i >=100) {
      nombre <- paste(i,".csv",sep = "")
    }
    data <- read.csv(nombre,header = TRUE)
    data<- data[,contaminante]
    z <-length(data)
    contador<-0
    cond <- mean(data,na.rm = TRUE )
    if (cond > 0) {
      for (j in 1:z){
        
        if ( is.na(data[j])) {
          
          contador<- contador + 1
        }}
      z <- z - contador
      data<- mean(data,na.rm = TRUE ) * z
      suma <- suma + data 
      divisor <- divisor + z
    }
    
  }
  total <- ( suma /divisor )
  total
}