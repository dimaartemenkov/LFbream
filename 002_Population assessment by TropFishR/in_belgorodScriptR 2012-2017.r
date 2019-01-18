#Load TropFishR package

library(TropFishR)



#Load data Abramis brama and change their structure

setwd("C:/Users/user/Google Диск/Работа/TropFishR/Горячев 16-10-2017/data/dmitrov 12-11-2017")
bream <- read.csv("bream1217.csv")

set.seed(1)
x <- c(bream$length)
dates <- c(bream$dates)
betterDates <- as.Date(dates, origin = "1899-12-30")
z <- betterDates



#Group the data by cohorts

data1 <- data.frame(x, z)
lfq_dat <- lfqCreate(data1,Lname = "x", Dname = "z", aggregate_dates = TRUE,
length_unit = "cm", bin_size = 2, plot=TRUE)



#Calculate input data and other parametrs (Linf, K, M) for next cohort analisys

synLFQ7a <- lfq_dat
synLFQ7a <- lfqModify(lfq = synLFQ7a, vectorise_catch = TRUE)

res_PW <- powell_wetherall(param = synLFQ7a,
                           catch_columns = 1:ncol(synLFQ7a$catch))
						   
Ms <- M_empirical(Linf = res_PW$Linf_est, K_l = res_PW$ZK, method = "Then_growth")
synLFQ7a$M <- as.numeric(Ms)
synLFQ7a$Linf <- as.numeric(res_PW$Linf_est)
synLFQ7a$K <- as.numeric(res_PW$ZK)



# Lenght-weight parameters a and b by VNIIPRKH data in the Belgorod reservoir

synLFQ7a$a <- as.numeric(0.0156)
synLFQ7a$b <- as.numeric(3.0787)



#Calculate length-frequency analisys

VPA(synLFQ7a, terminalE = 0.5, analysis_type = "CA", plot = TRUE,
    catch_unit = "'000", plus_group = TRUE, catch_columns = 1:ncol(synLFQ7a$catch))