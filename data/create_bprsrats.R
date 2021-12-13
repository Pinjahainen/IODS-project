BPRS <- read.csv("https://raw.githubusercontent.com/KimmoVehkalahti/MABS/master/Examples/data/BPRS.txt", sep = '')
RATS <- read.csv("https://raw.githubusercontent.com/KimmoVehkalahti/MABS/master/Examples/data/rats.txt", sep = '')

# checking the dimensionals and variables

dim(BPRS)
str(BPRS)

dim(RATS)
str(RATS)

# factorize needed variables
BPRS$subject <- factor(BPRS$subject)
BPRS$treatment <- factor(BPRS$treatment)
RATS$ID <- factor(RATS$ID)
RATS$Group <- factor(RATS$Group)

# changing the form to longitudal form so time series analysis can be performed
library(tidyr)
bprs_long <- gather(BPRS, week, measurement, week0:week8, factor_key=TRUE)
bprs_long

rats_long <- gather(RATS, time, measurement, WD1:WD64, factor_key=TRUE)
rats_long

# write the datasets
write.csv(bprs_long, 'data/bprs_long.txt')
write.csv(rats_long, 'data/rats_long.txt')