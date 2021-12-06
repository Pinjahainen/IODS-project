human <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/human1.txt", sep = ',')
dim(human)
summary(human)
str(human)

human$GNI <- as.numeric(gsub(",", ".", human$GNI))
keep <- c("Country", "Edu2.FM", "Labo.FM", "Edu.Exp", "Life.Exp", "GNI", "Mat.Mor", "Ado.Birth", "Parli.F" )
human <- human[,keep]

str(human)
human <- na.omit(human)
str(human)

table(human$Country)

rownames(human) <- human$Country;
human$Country <- NULL
loose <- c('Latin America and the Caribbean', 'Europe and Central Asia', 'East Asia and the Pacific', 'World')
human[!(row.names(human) %in% loose),]
str(human)

write.csv(human, file = 'data/human.txt')
