#matica

#vytvorenie

m <- matrix(1:8,2,4) #vektor, riadkov, stlpcov
m <- matrix(1:8,2,4,byrow=TRUE) #po riadkoch
m <- matrix(1:8,2) #vektor, riadkov

m <- cbind(1:4,7:10, 13:16) #vytvorenie z vektorov po sltpcoch
m <- rbind(1:4,7:10, 13:16) #vytvorenie z vektorov po riadkoch

#podmnoziny matic

#vzniknu vektory:
m[2,] #druhy riadok
m[,3] #treti stlpec
m[2,3] #riadok, stlpec

#vznikne matica:
m[2,,drop=FALSE] #druhy riadok
m[,3,drop=FALSE] #treti stlpec
m[2,3,drop=FALSE] #riadok, stlpec


m[c(1,2), c(2,4)] #vektor riadkov, vektor stlpcov

#maticove nasobenie

a <- matrix(1:4,2)
b <- matrix(1:4,2,byrow=TRUE)
c <- a %*% b

#dalsie funkcie
dim(m)
t(m) #transponovana matica
diag(m) #diagonala
diag(7) #jednotkova matica velkosti 7
det(diag(7)) #determinant

