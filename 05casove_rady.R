#births - nacitanie dat
births <- scan("births.dat")
birthstimeseries <- ts(births, frequency=12, start=c(1946,1)) #frekvencia - kolko hodnot je za rok
plot(birthstimeseries)

#dekompozicia

plot(decompose(birthstimeseries))

dekomponovane <- decompose(birthstimeseries) #aditivne
dekomponovane <- decompose(birthstimeseries,type="mult") #multiplikativne

plot(dekomponovane)

plot(dekomponovane$trend)
plot(dekomponovane$seasonal)
plot(dekomponovane$random)

#pre aditivne
plot(birthstimeseries - dekomponovane$seasonal) #ocistene od sezonnej zlozky
plot(birthstimeseries - dekomponovane$seasonal - dekomponovane$random) #trend

#pre multiplikativne
plot(birthstimeseries/dekomponovane$seasonal) #ocistene od sezonnej zlozky
plot((birthstimeseries/dekomponovane$seasonal)/dekomponovane$random) #trend







#nahodny casovy rad
o <- read.csv("udaje.csv")
udaje <- ts(o[,4], freq = 100)
plot(udaje)

dekomponovane <- decompose(udaje)
dekomponovane <- decompose(udaje,type="mult")
plot(dekomponovane)





#MA
library("TTR")
birthstimeseriesSMA3 <- SMA(birthstimeseries,n=3)

plot(birthstimeseries)
plot(SMA(birthstimeseries,n=3)) #klzavy priemer za poslednych n obdobi
plot(SMA(birthstimeseries,n=5))
plot(SMA(birthstimeseries,n=7))
plot(SMA(birthstimeseries,n=111))

#HoltWinters
plot(HoltWinters(x = birthstimeseries, beta = FALSE, gamma = FALSE)) #Brownovo
plot(HoltWinters(x = birthstimeseries, gamma = FALSE)) #Holtovo
plot(HoltWinters(x = birthstimeseries)) #HoltWintersovo

plot(forecast(HoltWinters(x = birthstimeseries, beta = FALSE, gamma = FALSE), h=8))
plot(forecast(HoltWinters(x = birthstimeseries, gamma = FALSE), h=8))
plot(forecast(HoltWinters(x = birthstimeseries), h=8))

#arima
ma <- arima(birthstimeseries, order=c(0,0,1)) #klzave priemery
ar <- arima(birthstimeseries, order=c(1,0,0)) #autoregresny model
arma <- arima(birthstimeseries, order=c(1,0,1)) #ich kombinacia
arima <- arima(birthstimeseries, order=c(1,1,1)) 

library("forecast")
plot(forecast.Arima(ma, h=5))
plot(forecast.Arima(ar, h=5))
plot(forecast.Arima(arma, h=5))
plot(forecast.Arima(arima, h=5))
