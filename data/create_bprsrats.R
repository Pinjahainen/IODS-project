BPRS <- read.csv("https://raw.githubusercontent.com/KimmoVehkalahti/MABS/master/Examples/data/BPRS.txt", sep = '')
RATS <- read.csv("https://raw.githubusercontent.com/KimmoVehkalahti/MABS/master/Examples/data/rats.txt", sep = '')

dim(BPRS)
str(BPRS)

dim(RATS)
str(RATS)

BPRS$subject <- factor(BPRS$subject)
BPRS$treatment <- factor(BPRS$treatment)
RATS$ID <- factor(RATS$ID)
RATS$Group <- factor(RATS$Group)

dim(BPRS)
str(BPRS)

dim(RATS)
str(RATS)


library(tidyr)
bprs_long <- gather(BPRS, week, measurement, week0:week8, factor_key=TRUE)
bprs_long

rats_long <- gather(RATS, time, measurement, WD1:WD64, factor_key=TRUE)
rats_long