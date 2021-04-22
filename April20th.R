d <- subset(iris, Species == "virginica" | Species == "versicolor")
str(d)
m <- glm(Species ~. , data = d, family = "binomial")
fitted(m[c(1:5, 51:55)])
f <- fitted(m)
as.numeric(d$Species)
ifelse(f>.5, 1, 0)== as.numeric(d$Species)-2

(m<- multinom(Species~., data=iris))
head(fitted(m))
(m <- rpart(Species~., data=iris))

plot(m, compress = TRUE, margin = .2)
text(m, cex=1.2)
install.packages("tm")
library(rpart.plot)
prp(m, type=4, extra=2, digits=3)

m <- nnet(Species ~., data = iris, size=3)
predict(m, newdata= iris)
View(predict(m, newdata= iris, type = "class"))
data <- iris[,c(1,2,5)]
data$Species <- factor(ifelse(data$Species=="setosa","rare","common"))
table(data$Species)
newData <- SMOTE
data(crude)
summary(crude)
inspect(crude[1])
inspect(tm_map(tm_map(crude, tolower), removePunctuation)[1])
