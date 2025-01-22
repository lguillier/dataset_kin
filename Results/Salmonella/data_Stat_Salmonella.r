#RSalmrutement
library(ggplot2)
library(ggpubr)


rm(list=ls())




#### Histoire des ratios

#11285

rm(list=ls()) 
# load Salm1-Bv1
load("Salm_1_11285_1.rdata")

R_Salm_1_11285_1<-mean((10^Bv1_N0)/(10^Salm1_N0))
R_Salm_1_11285_1


# load Salm1-Bv10
load("Salm_1_11285_10.rdata")
R_Salm_1_11285_10<-mean((10^Bv10_N0)/(10^Salm1_N0))
R_Salm_1_11285_10

rm(list=ls())

# load Salm10-Bv1
load("Salm_10_11285_1.rdata")
R_Salm_10_11285_1<-1/mean((10^Bv1_N0)/(10^Salm10_N0))


# 12048
rm(list=ls()) 
# load Salm1-Bv1
load("Salm_1_12048_1.rdata")

R_Salm_1_12048_1<-mean((10^Ba1_N0)/(10^Salm1_N0))
R_Salm_1_12048_1


# load Salm1-Bv10
load("Salm_1_12048_10.rdata")
R_Salm_1_12048_10<-mean((10^Ba10_N0)/(10^Salm1_N0))

R_Salm_1_12048_10


# load Salm10-Bv1
load("Salm_10_12048_1.rdata")
R_Salm_10_12048_1<-mean((10^Ba1_N0)/(10^Salm10_N0))


R_Salm_10_12048_1


# B8
rm(list=ls()) 
# load Salm1-Bv1
load("Salm_1_B8_1.rdata")

R_Salm_1_B8_1<-mean((10^Bv1_N0)/(10^Salm1_N0))
R_Salm_1_B8_1


# load Salm1-Bv10

rm(list=ls()) 
load("Salm_1_B8_10.rdata")
R_Salm_1_B8_10<-mean((10^Bv10_N0)/(10^Salm1_N0))

R_Salm_1_B8_10


# load Salm10-Bv1
rm(list=ls()) 
load("Salm_10_B8_1.rdata")
R_Salm_10_B8_1<-1/mean(RatioSalm10_Bv1)

1/R_Salm_10_B8_1


mean(c(3.9,4.4,2.2))
mean(c(4.5,6.2,1.1))
mean(c(42,26,47))



# load Salm10-Bv1 11B8
rm(list=ls()) 
load("Salm_10_11B8_1.rdata")
R_Salm_10_11B8_1<-1/mean(RatioSalm10_Bv1)

1/R_Salm_10_11B8_1

# load Salm10-Bv1 12B8
rm(list=ls()) 
load("Salm_10_12B8_1.rdata")
R_Salm_10_12B8_1<-1/mean(RatioSalm10_Bv1)

1/R_Salm_10_12B8_1


# load Salm10-Bv1 1112
rm(list=ls()) 
load("Salm_10_1112_1.rdata")
R_Salm_10_1112_1<-1/mean(RatioSalm10_Bv1)

1/R_Salm_10_1112_1


# load Salm10-Bv1 11-12-B8
rm(list=ls()) 
load("Salm_10_3B_1.rdata")
R_Salm_10_3B_1<-1/mean(RatioSalm10_Bv1)

1/R_Salm_10_3B_1

mean(c(3.9,4.4,2.2))
mean(c(4.5,6.2,1.1))
mean(c(42,26,47))



### EffSalmt on Final Nmax
rm(list=ls()) 

#11185
load("Salm_10_11285_1.rdata")
mean(Salm10_Nmax-log10(Salm10_N0))
delta11285_41<-data.frame(delta=Salm10_Nmax-mean(log10(Salm10_N0)),group="")
delta11285_41$group<-"11285-1"


load("Salm_1_11285_1.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta11285_14<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta11285_14$group<-"11285-2"

load("Salm_1_11285_10.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta11285_140<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta11285_140$group<-"11285-3"



#12048
load("Salm_10_12048_1.rdata")
mean(Salm10_Nmax-mean(log10(Salm10_N0)))
delta12048_41<-data.frame(delta=Salm1_Nmax-mean(log10(Salm10_N0)),group="")
delta12048_41$group<-"12048-1"


load("Salm_1_12048_1.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta12048_14<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta12048_14$group<-"12048-2"

load("Salm_1_12048_10.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta12048_140<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta12048_140$group<-"12048-3"


#B8
load("Salm_10_B8_1.rdata")
mean(Salm10_Nmax-Salm10_N0)
deltaB8_41<-data.frame(delta=Salm10_Nmax-mean(Salm10_N0),group="")
deltaB8_41$group<-"B8-1"


load("Salm_1_B8_1.rdata")
mean(Salm1_Nmax-Salm1_N0)
deltaB8_14<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
deltaB8_14$group<-"B8-2"

load("Salm_1_B8_10.rdata")
mean(Salm1_Nmax-Salm1_N0)
deltaB8_140<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
deltaB8_140$group<-"B8-3"

#11B8
load("Salm_10_11B8_1.rdata")
mean(Salm10_Nmax-log10(Salm10_N0))
delta11B8_41<-data.frame(delta=Salm10_Nmax-log10(Salm10_N0),group="")
delta11B8_41$group<-"11B8-1"


load("Salm_1_11B8_1.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta11B8_14<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta11B8_14$group<-"11B8-2"

load("Salm_1_11B8_10.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta11B8_140<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta11B8_140$group<-"11B8-3"


#12B8
load("Salm_10_12B8_1.rdata")
mean(Salm10_Nmax-log10(Salm10_N0))
delta12B8_41<-data.frame(delta=Salm10_Nmax-log10(Salm10_N0),group="")
delta12B8_41$group<-"12B8-1"


load("Salm_1_12B8_1.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta12B8_14<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta12B8_14$group<-"12B8-2"

load("Salm_1_12B8_10.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta12B8_140<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta12B8_140$group<-"12B8-3"

#1112
load("Salm_10_1112_1.rdata")
mean(Salm10_Nmax-log10(Salm10_N0))
delta1112_41<-data.frame(delta=Salm10_Nmax-log10(Salm10_N0),group="")
delta1112_41$group<-"1112-1"


load("Salm_1_1112_1.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta1112_14<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta1112_14$group<-"1112-2"

load("Salm_1_1112_10.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta1112_140<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta1112_140$group<-"1112-3"

#3B
load("Salm_10_3B_1.rdata")
mean(Salm10_Nmax-log10(Salm10_N0))
delta3B_41<-data.frame(delta=Salm10_Nmax-log10(Salm10_N0),group="")
delta3B_41$group<-"3B-1"


load("Salm_1_3B_1.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta3B_14<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta3B_14$group<-"3B-2"

load("Salm_1_3B_10.rdata")
mean(Salm1_Nmax-Salm1_N0)
delta3B_140<-data.frame(delta=Salm1_Nmax-Salm1_N0,group="")
delta3B_140$group<-"3B-3"


alldelta<-rbind(delta11285_41,delta12048_41,deltaB8_41,delta11B8_41,delta12B8_41,delta1112_41,delta3B_41,delta11285_14,delta12048_14,deltaB8_14,delta11285_140,delta12048_140,deltaB8_140)


p <- ggboxplot(alldelta, x = "group", y = "delta",
               color = "group", palette =c("salmon4","salmon4", "salmon4","salmon4","salmon4","salmon4","salmon4","salmon3","salmon3","salmon3","salmon2","salmon2","salmon2"),
               add = "jitter")
p



delta41<-rbind(delta11285_41,delta12048_41,deltaB8_41,delta11B8_41,delta12B8_41,delta1112_41,delta3B_41)
p <- ggboxplot(delta41, x = "group", y = "delta",
               color = "group", palette =c("salmon4","salmon4", "salmon4","salmon4","salmon4","salmon4","salmon4"),
               add = "jitter")
p



my_comparisons <- list( c("11285-1", "12048-1"),
                        c("11285-1",  "B8-1"),
                        c("12048-1",  "B8-1"),
                        c("11B8-1",  "12B8-1"),
                        c("11B8-1",  "1112-1"),
                        c("11B8-1",  "3B-1"),
                        c("B8-1",  "12B8-1"),
                        c("B8-1",  "11B8-1"),
                        c("B8-1",  "1112-1"),
                        c("B8-1", "3B-1"))
p + stat_compare_means(comparisons = my_comparisons, label = "p.signif")


delta14<-rbind(delta11285_14,delta12048_14,deltaB8_14,delta11B8_14,delta12B8_14,delta1112_14,delta3B_14)
p <- ggboxplot(delta14, x = "group", y = "delta",
               color = "group", palette =c("salmon3","salmon3", "salmon3","salmon3","salmon3","salmon3","salmon3"),
               add = "jitter")
p



my_comparisons <- list( c("11285-2", "12048-2"),
                        c("11285-2",  "B8-2"),
                        c("12048-2",  "B8-2"),
                        c("11B8-2",  "12B8-2"),
                        c("11B8-2",  "1112-2"),
                        c("11B8-2",  "3B-2"),
                        c("B8-2",  "1112-2"))
p + stat_compare_means(comparisons = my_comparisons, label = "p.signif")


delta140<-rbind(delta11285_140,delta12048_140,deltaB8_140,delta11B8_140,delta12B8_140,delta1112_140,delta3B_140)
p <- ggboxplot(delta140, x = "group", y = "delta",
               color = "group", palette =c("salmon3","salmon3", "salmon3","salmon3","salmon3","salmon3","salmon3"),
               add = "jitter")
p



my_comparisons <- list( c("11285-3", "12048-3"),
                        c("11285-3",  "B8-3"),
                        c("12048-3",  "B8-3"),
                        c("11B8-3",  "12B8-3"),
                        c("11B8-3",  "1112-3"),
                        c("11B8-3",  "3B-3"),
                        c("B8-3",  "1112-3"),
                        c("11285-3", "3B-3"))
p + stat_compare_means(comparisons = my_comparisons, label = "p.signif")
+-


