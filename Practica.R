mayor<-0
menor<-0
for (j in 1 :100){
  z<- 5
  i=1
  x[[i]]<-c(z)
  while (z>=3 && z<=10){
    
    moneda <- rbinom(1,1,0.5)
    if (moneda==1){ #Caminata aleatoria 
      z<-z+0.5
      x[[i]]<-c(z)
      i=i+1
    }else {
      z<-z-0.5
      x[[i]]<-c(z)
      i=i+1
    }
  if (x[[i]]==10.5){
    mayor=mayor+1
  }
  if (x[[i]]==2.5){
    menor=menor+1
  }
}
}
mayor
menor