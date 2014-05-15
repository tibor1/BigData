#source("sc_001_uvod.R")

#Normalne rozdelenie: 
#Param: pocet pokusov= 100, stredna hodnota= -20, odchylka= 1
#Vrati: priemer
##Volania: norm_rozd()
norm_rozd <- function(){
  x <- rnorm(100, -20, 1)
  plot(x)
  mean(x)
}
#hist(x)

#Normalne rozdelenie s parametrami
#Param: pocet pokusov= n, stredna hodnota= mean, odchylka= sd
#Vrati: priemer
##Volania: norm_rozd_2(10000, 0, 100)
norm_rozd_2 <- function(n, mean, sd){
  x <- rnorm(n, mean, sd)
  plot(x)
  mean(x)
}

#Binomicke rozdelenie: 
#Param: vektor vysledkov, n = 20, p = 0.5 
#Vrati: nakresli graf
##Volania: bin_rozd()
bin_rozd <- function(){
  x <- dbinom(0:20,20,0.5)
  plot(x)
}

#ine

rep("retazec", times = 4) #vytvori vektor velkosti 
rep(1/5, times = 5)
