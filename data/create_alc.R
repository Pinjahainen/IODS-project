# Pinja Mero, 21.11.2021
# This file icludes merged datasets of student-mat and student-por

#read in two datasets
student_mat <- read.csv('student-mat.csv')
student_por <- read.csv('student-por.csv')

# structure and dimensions of the two datasets
str(student_mat)
dim(student_mat)
str(student_por)
dim(student_por)

# Define own id for both datasets
library(dplyr)
por_id <- por %>% mutate(id=1000+row_number()) 
math_id <- math %>% mutate(id=2000+row_number())

free_cols <- c("id","failures","paid","absences","G1","G2","G3")

join_cols <- setdiff(colnames(por_id),free_cols)

pormath_free <- por_id %>% bind_rows(math_id) %>% select(one_of(free_cols))





