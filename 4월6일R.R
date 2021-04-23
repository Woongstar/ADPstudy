chisq.test(table(survey$W.Hnd), p=c(.3,.7))
ks.test(rnorm(100), rnorm(100))
ks.test(rnorm(1000), "pnorm",0,1)


x<- rnorm(1000, mean=110, sd=1)
qqnorm(x)
qqline(x,lty=2)
x<- runif(1000)
qqplot(runif(1000, min = 1,max=10),1:10)


cor(iris$Sepal.Width, iris$Sepal.Length)
cor(iris[,1:4])
symnum(cor(iris[,1:4]))
x<-c(3,4,5,3,2,1,7,5)
rank(sort(x))

m<- matrix(c(1:10,(1:10)^2),ncol=2)
cor.test(c(1,2,3,4,5),c(1,0,3,4,5), method = "pearson")

x<- rnorm(30)
x
t.test(x)
x<- rnorm(30,mean = 10)
t.test(x,mu=10)

sleep
sleep2

tapply(sleep2$extra, sleep2$group, mean)
var.test(extra~group, sleep2)
t.test(extra~group, data = sleep2, paired=F, var.equal=T)
?t.test
with(sleep, t.test(extra[group==1],extra[group==2], paired=T))
with(iris, var.test(Sepal.Width, Sepal.Length))
prop.test(42,100)
