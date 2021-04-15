festivalData <- read.delim(file.choose(), header= T)
View(festivalData)
str(festivalData)
#히스토그램
festivalHistogram <- ggplot(festivalData, aes(day1))
#범례 지우기
+ theme(legend.position = "none")
festivalHistogram + geom_histogram(binwidth = 0.4) + labs(x = "Hygiene(day1 of festival)", y="Frequency")

# 상자수염그림
festivalBoxplot <- ggplot(festivalData, aes(gender,day1))
festivalBoxplot + geom_boxplot()
festivalData<- festivalData[order(festivalData$day1),]
festivalData
View(festi)
festivalData <- edit(festivalData)

#밀도그림
density <- ggplot(festivalData, aes(day1))
density + geom_density() + labs(x="Hygiene(Day1 of Festival", y="Density Estimate")
