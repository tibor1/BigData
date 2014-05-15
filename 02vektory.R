#vektor - list hodnot
#       - dovoluje vela operacii
#       - napr. kreslenie grafov a pod.
#       - hodnoty v nom musia byt rovnakeho typu

#vytvorenie vektora (Combine)
c(1,2,3)
c('a', 'b', 'c')

#vektory so zmiesanymi typmi
c(1, T, "three")
c(1, T, 3)

#ciselne vektory
1:10
seq(1,10) #od, do
seq(10) #dlzka
seq(1,10,0.5) #od, do, krok


#indexovanie od 1
a <- seq(1,10,0.5)
a
a[0]
a[2]
a[c(2,3,4)]

#ukladanie hodnot do vektora
a[20] <- 55
a[21:22] <- c(-1, -2)
  
rank = 23:24
a[rank] <- c(77,78)

#mnozinove operatory
x <- 1:10
y <- 5:15

union(x,y) #zjednotenie
intersect(x,y) #prienik
setdiff(x,y) #odcitanie
setequal(x,y) #porovnanie
setequal(5:1,seq(1,5))
is.element(5, x) # je 5 element x?

#ine funkcie
quantile(1:100, seq(0,1,0.25)) #0, 0,25, 0.5, 0.75, 1 kvantily
