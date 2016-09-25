corr<-function(directorio,horizonte=0){
  
  correla<-numeric()
  micorrelacion<-numeric()
  for (i in 1:332) {
    if (i < 100) {
      datos <- paste("0",i,".csv",sep = "")}
    if (i<10) {
      datos<- paste("00",i,".csv",sep = "")}
    if (i >=100) {
      datos <- paste(i,".csv",sep = "")
    }
  
    data<-read.csv(datos)
    comp<-data[complete.cases(data),]
    x<-nrow(na.omit(data))
    
    if (x>=horizonte){
      
      correlacion<-cor(comp[2],comp[3])
      y<-c(y,correlacion)
    }
  }
  
  micorrelacion
}