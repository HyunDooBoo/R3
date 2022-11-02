exam <- read.csv("csv_exam.csv")
head(exam)
tail(exam,10)
view(exam)
dim(exam)
str(exam)
summary(exam)
view(exam)
View(exam)

install.packages("ggplot2")
install.packages("rlang")

mpg=as.data.frame(ggplot2::mpg)
head(mpg)
tail(mpg)
dim(mpg)
str(mpg)
summary(mpg)

a = as.data.frame(ggplot2::faithfuld)
head(a)
tail(a)
dim(a)
str(a)
summary(a)
View(a)

install.packages("dplyr")
library("dplyr")
midwest = as.data.frame(ggplot2::midwest)
mid = rename(midwest, wow = area)
mpg7 = rename(mpg, m7=model)
mpg7 = rename(mpg7, y7 = year)

df = data.frame(v1=c(1,2,3), v2=c(4,5,6))
df
df$t2 <- df$v1 + df$v2
df

mpg$total = (mpg$cty + mpg$hwy)/2
mean(mpg$total)
summary(mpg$total)
hist(mpg$total)

mpg$test = ifelse(mpg$total >= 20, "pass", "fail")
table(mpg$test)

library("ggplot2")

qplot(mpg$test)

mpg$grade = ifelse(mpg$total >= 30, "A", ifelse(mpg$total >= 20, "B", "C"))

qplot(mpg$grade)

mpg$grade = ifelse(mpg$total >= 30, "A", ifelse(mpg$total >= 25, "B", ifelse(mpg$total >= 20,"C", "D")))

mpg

a = as.data.frame(ggplot2::midwest)
a
b = rename(a,total = poptotal, asian = popasian)
b