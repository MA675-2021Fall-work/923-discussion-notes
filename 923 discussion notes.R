set.seed(675)
n <- 100
y1 <- rnorm(n)
y2 <- rnorm(n,c(-2,2)[sample(1:2,n,replace = TRUE)])
y <- c(y1,y2)
g <- gl(2,n)
tb1 <- data.frame(y = y, group = g)
head(tb1)
tail(tb1)
t.test(y1,y2)
library(ggplot2)
ggplot(tb1, aes(group, y)) +
  geom_boxplot()
#############################

ggplot(tb1, aes(group, y)) +
  geom_boxplot(notch = TRUE)
############################

ggplot(tb1, aes(group, y, color = group)) + 
  geom_boxplot(notch = TRUE) + 
  geom_point(position = "jitter")


