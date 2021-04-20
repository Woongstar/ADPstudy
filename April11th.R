myHistogram <- ggplot(myData, aes(variable))
install.packages("ggsave")

facebookData <- read.delim(file.choose(), header = T)
View(facebookData)
graph <- ggplot(facebookData, aes(NPQC_R_Total,Rating_Type))
graph 
graph + geom_point(shape=17, size = 0.5, aes(colour= Rating_Type), position="jitter")
