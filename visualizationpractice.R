install.packages("ggplot2")
library(ggplot2)
str(airquality)
ggplot(airquality, aes(x=day, y= temp)) + 
  geom_point(size =3, color="red")
ggplot(airquality, aes(x=day, y= temp)) + 
  geom_line() + 
  geom_point(size=3, color = "blue")
ggplot(mtcars, aes(x=cyl)) + geom_bar(width = 0.5)
ggplot(mtcars, aes(x= factor(cyl))) + geom_bar( width = 0.5)
ggplot(mtcars, aes(x=factor(cyl)))+ geom_bar(aes(fill=factor(gear)))
ggplot(mtcars, aes(x=factor(cyl))) + geom_bar(aes(fill = factor(gear))) +
  coord_polar(theta = "y")
ggplot(airquality, aes(x= day, y= temp, group = day)) + geom_boxplot()
View(airquality)
ggplot(airquality, aes(temp)) + geom_histogram(binwidth = 1)
