data(cars)
m<- lm(dist ~speed,cars)
m
fitted(m)[1:4]+residuals(m)[1:4]
residuals(m)[1:4]
confint(m)
full<- lm(dist ~speed,cars)
predict(m, newdata=data.frame(speed=c(3)), interval="prediction")
coef(m)
-17.57 + 3.9324*3
m
summary(m)
anova(m)
full<- lm(dist ~speed,cars)
reduced <- lm(dist~1, data = cars)
anova(full, reduced)

plot(m, which=c(4,6))

plot(cars$speed, cars$dist)
abline(coef(m))
summary(cars$speed)
predict(m, newdata=data.frame(speed=seq(4.0,25.0, .2)), interval="confidence")

speed <- seq(min(cars$speed), max(cars$speed), .1)
ys <-predict(m, newdata=data.frame(speed=speed), interval="confidence")
matplot(speed, ys, type='n')
matlines(speed, ys, lty = c(1,2,2), col=1)


m <- lm(Sepal.Length ~ Sepal.Width 
        + Species, data=iris)
summary(m)
model.matrix(m)[c(1,51,101),]
anova(m)
with(iris, plot(Sepal.Width, Sepal.Length, cex=.7, pch=as.numeric(Species)))
coef(m)

abline(2.25, 0.80, lty=1)
abline(2.25 + 1.46,0.80, lty=2)
abline(2.25 + 1.94,0.80, lty=3)
legend("topright", levels(iris$Species), pch=1:3, bg="white")
data(Orange)
Orange
View()
with(Orange,plot(Tree, circumference, xlab="tree", ylab="circumference"))
with(Orange,interaction.plot(age, Tree, circumference))
Orange[,"fTree"] <- factor(Orange[,"Tree"], ordered=F)
m <- lm(circumference~ fTree * age, data=Orange)
anova(m)
data(Orange)
m <- lm(circumference ~ age + I(age^2), data = Orange)
rstudent(m)


View(BostonHousing)
m <- lm(medv ~., data=BostonHousing)
m2<- step(m, direction = "both")
m<- regsubsets(medv ~.,data=BostonHousing)
summary(m)
str(mtcars)
describe(mtcars)
summary(mtcars)
plot(iris[-5], cex=.7,pch=1:3)
install.packages("caret", dependencies=T)
featurePlot(iris[,1:4], iris$Species, "ellipse")

all <- factor(c(paste0(LETTERS,"0"), paste0(LETTERS,"1")))
data = data.frame(lvl=all, valaue=rnorm(length(all)))
data
