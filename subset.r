###########################################
# Data cleaning, transformation, etc. 
###########################################
# Select out 4-year olds
s1 <- FACES2006_missing[FACES2006_missing$COHORT == 4, ]
row.names(s1) <- NULL
#---------------------------------------------
#Select out English speakers based on Engish Home Language
s2<- s1[s1$P1HHLAN2 == 0,] #n=881
#s2b<- s1[s1$P1RHHLNG == 0,] #n=881 Using simple language majority has same sample size
#Subset for panel model 
long.invariance <- subset(s2, 
   select = c(CHILDID, A1PPVT4R, A1WJAPR, A1WJLWR, R1BAGGR,  R1BWITH, 
  R1BHYPER ,R1ATTUDE, R1MOTIVE, R1PRSIST, A2PPVT4R, A2WJAPR, A2WJLWR,
  R2BAGGR, R2BWITH, R2BHYPER ,R2ATTUDE, R2MOTIVE, R2PRSIST,
  A3PPVT4R, A3WJAPR, A3WJLWR, A4PPVT4R, A4WJAPR, A4WJLWR, 
  KR3ATUDE, KR3MOTIV, KR3PRSST, KR3BAGGR, KR3BHYPE, KR3BWITH,
  STRAT, PSU, T1_ID, T2_ID, T3_ID, PRA12OTW, 
  A1CAGE, A2CAGE, A3CAGE, A4CAGE, CHGENDER,P1RMOMED,
  O2CLSSCD, O2CLSSIS, O2CLSSLM, O2CLSSQF,
  CLS1_ID, CLS2_ID, CLS3_ID))
row.names(long.invariance) <- NULL
#Need to drop any case with missing data for longitudinal weights
long.invariance <- long.invariance[complete.cases(long.invariance$PRA12OTW),]
row.names(long.invariance) <- NULL
#####BEH SUBSETS
long.invariance.2 <- subset(s2, 
                          select = c(CHILDID, A1PPVT4R, A1WJAPR, A1WJLWR, R1BAGGR,  R1BWITH, 
                                     R1BHYPER ,R1ATTUDE, R1MOTIVE, R1PRSIST, A2PPVT4R, A2WJAPR, A2WJLWR,
                                     R2BAGGR, R2BWITH, R2BHYPER ,R2ATTUDE, R2MOTIVE, R2PRSIST,
                                     A3PPVT4R, A3WJAPR, A3WJLWR, A4PPVT4R, A4WJAPR, A4WJLWR, 
                                     KR3ATUDE, KR3MOTIV, KR3PRSST, KR3BAGGR, KR3BHYPE, KR3BWITH,
                                     STRAT, PSU, T1_ID, T2_ID, T3_ID, PRA12OTW, 
                                     A1CAGE, A2CAGE, A3CAGE, A4CAGE, CHGENDER,P1RMOMED,
                                     O2CLSSCD, O2CLSSIS, O2CLSSLM, O2CLSSQF,
                                     CLS1_ID, CLS2_ID, CLS3_ID))
#for problem BeH
long.invariance.2$BINAGGR1<-ifelse(long.invariance.2$R1BAGGR>0,1,0)
long.invariance.2$BINWITH1<-ifelse(long.invariance.2$R1BWITH>0,1,0)
long.invariance.2$BINHYP1<-ifelse(long.invariance.2$R1BHYPER>0,1,0)
long.invariance.2$BINAGGR2<-ifelse(long.invariance.2$R2BAGGR>0,1,0)
long.invariance.2$BINWITH2<-ifelse(long.invariance.2$R2BWITH>0,1,0)
long.invariance.2$BINHYP2<-ifelse(long.invariance.2$R2BHYPER>0,1,0)
long.invariance.2$BINAGGR3<-ifelse(long.invariance.2$KR3BAGGR>0,1,0)
long.invariance.2$BINWITH3<-ifelse(long.invariance.2$KR3BWITH>0,1,0)
long.invariance.2$BINHYP3<-ifelse(long.invariance.2$KR3BHYPE>0,1,0)
long.invariance.2<-long.invariance.2[complete.cases(long.invariance.2$PRA12OTW),]
row.names(long.invariance.2) <- NULL
#x.omit <- na.omit(x) # listwise deletion of missing
# Note. These numbers vary slightly from what are in the manual, in that there are more students, by 
# just a few in each category. 
# Select out variables of interest
###NOTE? Sort out by KG year?

"P2HHLAN2", "P3HHLAN2", "T2A00_1", "T3A00_1"
"P2RMOMED", "P3RMOMED"
#Years teahcer experience?
#Child age?



