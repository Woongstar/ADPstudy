library(readxl)
mid_exam <- read_excel("C:/Rstudy/source/mid_exam.xlsx")
View(mid_exam)
library(dplyr)
mid_exam <- rename(mid_exam, MATH_MID=MATH, ENG_MID=ENG)
final_exam <- read_excel("C:/Rstudy/source/final_exam.xlsx")
View(final_exam)
final_exam <- rename(final_exam, MATH_FINAL=MATH, ENG_FINAL=ENG)
total_exam <- inner_join(mid_exam,final_exam,by="ID")
View(total_exam)


total_exam %>% summarise(MATH_AVG = mean(c(MATH_MID,MATH_FINAL)))
total_exam %>% summarise(ENG_AVG = mean(c(ENG_MID,ENG_FINAL)))
total_exam %>% summarise(TOTAL_AVG = mean(c(MATH_AVG,ENG_AVG)))


total_exam$MATH_AVG <- (total_exam$MATH_MID + total_exam$MATH_FINAL)/2
total_exam$ENG_AVG <- (total_exam$ENG_MID + total_exam$ENG_FINAL)/2

total_exam$TOTAL_AVG <- (total_exam$MATH_MID + total_exam$MATH_FINAL+total_exam$ENG_MID + total_exam$ENG_FINAL)/4

mean(total_exam$MATH_AVG)
mean(total_exam$ENG_AVG)

total_exam %>% filter(MATH_MID >=80 & ENG_MID >=90)
boxplot(total_exam$MATH_AVG, total_exam$ENG_AVG)
