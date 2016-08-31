# Clase del 25/08/2016

#Crear Vectores con la funci??n vector
x <- vector(mode="numeric", length = 5L)
x

#Crear vectores con la funci??n c
x <- c(0.5,0.6)
x
class(x)

x <- c(TRUE, FALSE, T, F)
x
class(x)

x <- 10:0
x
class(x)

x <- c(1+2i,5,3+9i,-4-5i)
x
class(x)

x <- c("a","b","c","d")
x
class(x)

# Mezcla de objetos en un vector
y <- c(1.7,"a")    #caracter
y
class(y)

y <- c(TRUE,2)     #num??rico
y
class(y)

y <- c("a", TRUE)  #caracter
y
class(y)

y <- c(TRUE,10L,8.5,1+1i,"Nacho")
y
class(y)

# Orden de coacci??n/coerci??n expl??cita
# 1 character
# 2 complex
# 3 numeric
# 4 integer
# 5 logical

# Coerci??n expl??cita
z <- 0:6
class(z)
as.numeric(z)
as.logical(z)
as.character(z)

z <- c(1+2i,3+4i,8, 0+3i,0)
as.logical(z)

z <- c("Programaci??n","Actuarial","III")
as.numeric(z)
as.logical(z)
as.complex(z)

# LISTAS (es como un vector... pero de vectores y c/u tiene
# su propia clase)
x <- list(1,"a",TRUE,1+4i)
x
class(x)

# MATR??CES
m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)
# Cambio de Dimensiones de 2x3 a 3x2
dim(m) <- c(3,2)
m
#Crear una matriz con datos
m <- matrix(1:6,3,2)
m

m <- matrix(1:6,3,3,T)
m
class(m)
str(m)

dim(m) <- c(2,5) #Esto va a producir error

x <- c(1,2,3)
y <- c("a","b","c")
z <- c(x,y)
z

m1 <- rbind(m,x)
m1

m2 <- cbind(m,x)
m2

rbind(m1,y)
cbind(m2,y)

#Factores 

x<- factor(c("si","no","si","si","no","si","no"))
x

#Cuenta los valores del vector

table(x)
#asigna un valor para ahorrar memoria
unclass(x)

x<- factor(c("si","no","si","si","no","si","no"),levels=c("si","no"))
x
unclass(x)


x<-factor(c("azul","azul","rojo","azul","amarillo","verde","azul"))
x
table(x)

#Valores faltantes

x<-c(1,2,NA,10,3)
is.na(x)
is.nan(x)

x<-c(1,2,NaN,10,3)
is.na(x)
is.nan(x)

#DataFrames

x<-data.frame(Erick = 1:4,Lori=c(T,T,F,F))
row.names(x)<-c("Primero","Segundo","Tercero","Cuarto")
x

NROW(x)
ncol(x)

attributes(x)
names(x) <-c("Yarely","Karekn")
x

#Los nombres no son exclusivos de los data frames
x<- 1:3
names(x)<-c("Hugo","Paco","Luis")
x


x<-list(a=1:10,b=100:91,c=51:60)

names(x) <-c("s1","s2","s3")
x


m<-matrix(1:4,2,2)
m
attributes(m)
dimnames(m)<-list(c("Fil1","fil2"),c("col1","col2"))
m


e<-matrix(data=NA,5,6,dimnames=list(c(1:5),c("A","B","C","D","E","F")))
e

data<-read.table("DatosdeS&P.csv",T,",")
data


