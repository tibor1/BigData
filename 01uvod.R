#datove struktury v R

#cislo
n <- 5

#boolean
t <- TRUE  #t <- FALSE
#t <- F

#retazec
a <- 'abc'
b <- "abc"

#vektor (ciselny, komplexny, logicky, retazce)
v <- c(1,2,3,4)
u <- c(1+1i, 3-2i, -7+3i)
w <- c(T,F,T,T)
q <- c('abc', 'def', 'ghi')

#faktor (ako vektory ale zahrnaju levely)
factor(c(2, 3, 1, NA, 3, 2), levels=c(1, 3, 2, 4))
factor(c(0, 1, 0, 0, 1), labels=c("hladny", "najedeny")) #definovanie popiskov
factor(c(0, 1, 0, 0, 1), levels=c(0,1), labels=c("hladny", "najedeny")) 

velkost <- factor(c(3, 1, 5, 4, 3, 2, 4), labels=c("mravec", "slimak", "koza", "slon", "zirafa"))

velkost <- factor(c(3, 1, 5, 4, 3, 2, 4), labels=c("mravec", "slimak", "koza", "slon", "zirafa"), ordered=T)
velkost > "slimak"
velkost[velkost > "slimak"] #vrati vsetky vacsie zvierata ako slimak
velkost[velkost > "slimak" & velkost < "zirafa"]

mean(factor(1:5)) #pozor niesu cisla

#matica
m <- matrix(1:8,2,4)            #po stlpcoch
m <- matrix(1:8,2,4,byrow=TRUE) #po riadkoch

#tabulka dat
knihy <- data.frame(nazov=c("Dekameron", "Maj", "Bedari","Babicka"),
                    autor=c("Boccaccio", "Erben", "Hugo", "Nemcova"))

knihy$pocet <- c(3, 4, 3, 5)
knihy$pocet[2] <- 6

knihy

#pole -podobne ako matice, ale moze mat viac dimenzii
a <- array(1:10, c(2,7)) #vektor, dimenzie
a <- array(1:10, c(2,2,7))

#zoznam/list - viac typov sucasne #!!!!!!!!!!!!!!!!doplnit

#help a example
help(mean)
example(mean)

#ine uzitocne funkcie
x <- 3   #budeme pracovat s x

class(x) #vrati triedu objektu x
rm(x)    #zmaze objekt x
runif(n=100,min=0,max=50) #rovnomerne rozdelenie: 100 hodnot od 0 do 50 
sample(10:20) #nahodna permutacia
