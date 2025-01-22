
library(stringr)
library(dplyr)
library(nlsMicrobio)

rm(list=ls())

data<-read.csv("Salm1_4.csv",header = TRUE,sep=";")


# Analyse au niveau de chaque champ

# R1

Salm111<-filter(data,str_detect(code1,"r111")&t<15)
Salm111<-data.frame(t=Salm111$t,LOG10N=log10((10^Salm111$log10N)))
fitSalm111 <- nls(baranyi_without_lag, Salm111,
                list(mumax=0.8, LOG10N0 = 2.5, LOG10Nmax = 5.6))
pSalm111<-coef(fitSalm111)
overview(fitSalm111)

plotfit(fitSalm111, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r111")

Salm112<-filter(data,str_detect(code1,"r112")&t<17)
Salm112<-data.frame(t=Salm112$t,LOG10N=log10((10^Salm112$log10N)))
fitSalm112 <- nls(baranyi_without_lag, Salm112,
                list(  mumax=0.8, LOG10N0 = 2.3, LOG10Nmax = 5.6))
pSalm112<-coef(fitSalm112)
overview(fitSalm112)

plotfit(fitSalm112, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r112")

Salm121<-filter(data,str_detect(code1,"r121")&t<17)
Salm121<-data.frame(t=Salm121$t,LOG10N=log10((10^Salm121$log10N)))
fitSalm121 <- nls(baranyi_without_lag, Salm121,
                list( mumax=0.8, LOG10N0 = 2, LOG10Nmax = 4.26))
pSalm121<-coef(fitSalm121)
overview(fitSalm121)

plotfit(fitSalm121, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r121")

Salm122<-filter(data,str_detect(code1,"r122")&t<17)
Salm122<-data.frame(t=Salm122$t,LOG10N=log10((10^Salm122$log10N)))
fitSalm122 <- nls(baranyi_without_lag, Salm122,
                list(  mumax=0.8, LOG10N0 = 2.3, LOG10Nmax = 5.6))
pSalm122<-coef(fitSalm122)
overview(fitSalm122)

plotfit(fitSalm122, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r122")



# R2



 Salm211<-filter(data,str_detect(code1,"r211")&t<17)
 Salm211<-data.frame(t=Salm211$t,LOG10N=log10((10^Salm211$log10N)))
 fitSalm211 <- nls(baranyi_without_lag, Salm211,
                 list(  mumax=0.8, LOG10N0 = 2.3, LOG10Nmax = 5.6))
pSalm211<-coef(fitSalm211)
 overview(fitSalm211)

 plotfit(fitSalm211, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r211")

 Salm212<-filter(data,str_detect(code1,"r212")&t<17)
 Salm212<-data.frame(t=Salm212$t,LOG10N=log10((10^Salm212$log10N)))
 fitSalm212 <- nls(baranyi_without_lag, Salm212,
                 list( mumax=0.8, LOG10N0 = 2.3, LOG10Nmax = 5.6))
 pSalm212<-coef(fitSalm212)
 overview(fitSalm212)

plotfit(fitSalm212, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r212")

Salm221<-filter(data,str_detect(code1,"r221")&t<11)
Salm221<-data.frame(t=Salm221$t,LOG10N=log10((10^Salm221$log10N)))
fitSalm221 <- nls(baranyi_without_lag, Salm221,
                list( mumax=0.8, LOG10N0 = 2.3, LOG10Nmax = 5.6))
pSalm221<-coef(fitSalm221)
overview(fitSalm221)

plotfit(fitSalm221, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r221")


Salm222<-filter(data,str_detect(code1,"r222")&t<12)
Salm222<-data.frame(t=Salm222$t,LOG10N=log10((10^Salm222$log10N)))
fitSalm222 <- nls(baranyi_without_lag, Salm222,
                list(  mumax=0.8, LOG10N0 = 2.3, LOG10Nmax = 5.6))
pSalm222<-coef(fitSalm222)
overview(fitSalm222)

plotfit(fitSalm222, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r222")


# r3

Salm311<-filter(data,str_detect(code1,"r311")&t<17)
Salm311<-data.frame(t=Salm311$t,LOG10N=log10((10^Salm311$log10N)))
fitSalm311 <- nls(baranyi_without_lag, Salm311,
                list(  mumax=0.8, LOG10N0 = 2.3, LOG10Nmax = 5.6))
pSalm311<-coef(fitSalm311)
overview(fitSalm311)

plotfit(fitSalm311, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r311")

Salm312<-filter(data,str_detect(code1,"r312")&t<17)
Salm312<-data.frame(t=Salm312$t,LOG10N=log10((10^Salm312$log10N)))
fitSalm312 <- nls(baranyi_without_lag, Salm312,
                list( mumax=0.8, LOG10N0 = 2.3, LOG10Nmax = 5.6))
pSalm312<-coef(fitSalm312)
overview(fitSalm312)

plotfit(fitSalm312, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r312")

Salm321<-filter(data,str_detect(code1,"r321")&t<17)
Salm321<-data.frame(t=Salm321$t,LOG10N=log10((10^Salm321$log10N)))
fitSalm321 <- nls(baranyi_without_lag, Salm321,
                list(  mumax=0.8, LOG10N0 = 2, LOG10Nmax = 4.6))
pSalm321<-coef(fitSalm321)
overview(fitSalm321)

plotfit(fitSalm321, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r321")

Salm322<-filter(data,str_detect(code1,"r322")&t<17)
Salm322<-data.frame(t=Salm322$t,LOG10N=log10((10^Salm322$log10N)))
fitSalm322 <- nls(baranyi_without_lag, Salm322,
                list( mumax=0.8, LOG10N0 = 2.3, LOG10Nmax = 5.6))
pSalm322<-coef(fitSalm322)
overview(fitSalm322)




plotfit(fitSalm322, col.fit="blue",smooth = TRUE,ylab="log10(biovolume)",xlab = "time (h)")+title("Salm1-r322")

Salm1_mumax<-c(pSalm111[1],pSalm112[1],pSalm121[1],pSalm122[1],
             pSalm211[1],  pSalm212[1],pSalm221[1], pSalm222[1], 
          pSalm311[1],  pSalm312[1],  pSalm321[1],  pSalm322[1])

Salm1_N0<-c(pSalm111[2],pSalm112[2],pSalm121[2],pSalm122[2],
               pSalm211[2],  pSalm212[2], pSalm221[2], pSalm222[2], 
            pSalm311[2],  pSalm312[2],  pSalm321[2],  pSalm322[2])

Salm1_Nmax<-c(pSalm111[3],pSalm112[3],pSalm121[3],pSalm122[3],
            pSalm211[3],  pSalm212[3], pSalm221[3],  pSalm222[3], 
         pSalm311[3],  pSalm312[3],  pSalm321[3],  pSalm322[3])



Salm1_delta<-Salm1_Nmax-Salm1_N0


save.image("Salm1_4.rdata")
