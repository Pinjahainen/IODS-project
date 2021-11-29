library(dplyr)
hd <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/human_development.csv", stringsAsFactors = F);
gii <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/gender_inequality.csv", stringsAsFactors = F, na.strings = "..");

str(hd)
dim(hd)
summary(hd)

str(gii)
dim(gii)
summary(gii)

rename(gii, 'Rank' = 'GII.Rank', 'GIIndx' = 'Gender.Inequality.Index..GII.', 'Mort.rate' = 'Maternal.Mortality.Ratio', 
       'Ado.Brate' = 'Adolescent.Birth.Rate', 'Parl.rep' = 'Percent.Representation.in.Parliament', 
       'F.secedu' = 'Population.with.Secondary.Education..Female.', 'M.secedu' = 'Population.with.Secondary.Education..Male.', 
       'F.labour' = 'Labour.Force.Participation.Rate..Female.', 'M.labour' = 'Labour.Force.Participation.Rate..Male.');

str(gii)

rename(hd, 'HDI' = 'Human.Development.Index..HDI.', 'life.exp' = 'Life.Expectancy.at.Birth', 'exp.edu' = 'Expected.Years.of.Education',
             'mean.edu' = 'Mean.Years.of.Education', 'GNI' = 'Gross.National.Income..GNI..per.Capita', 
             'GNI.HDI' = 'GNI.per.Capita.Rank.Minus.HDI.Rank' );

str(hd)

gii$edu2Ratio <- gii$F.secedu/gii$M.secedu; # new ratio variable: education
gii$labRatio <- gii$F.labour/gii$M.labour; # new ratio variable: labour force
