#第一題
#一
p1=boxplot(example3_7$月生活費支出)
d=density(example3_7$月生活費支出)
p2=plot(d)
par(TRUE)
p3=hist(example3_7$月生活費支出,freq=FALSE)
#二
rug(jitter(example3_7$月生活費支出))
lines(density(example3_7$月生活費支出),col="blue",lwd=5)
#三
stem(example3_7$月生活費支出)
#四
summary(example3_7$性別)
summary(example3_7$家庭所在地)
summary(example3_7$月生活費支出)
#第二題
plot(x=example3_7$月生活費支出,y=example3_7$性別)
par(new=TRUE)
plot(x=example3_7$月生活費支出,y=example3_7$家庭所在地,xlab="")
#第三題
p_hat=322/500
x<-qnorm(0.025)*sqrt(p_hat*(1-p_hat)/500)
p_hat-x
p_hat+x
#第四題
e<-sum(c(mydata2$不合格品數)*c(mydata2$機率))
e
v<-sum(c(mydata2$不合格品數-exp)^2 * c(mydata2$機率))
v
s<-sqrt(v)
s
#第五題

#第六題
#h0 u=15,h1 u!=15
mu<- mean(jjp$建材長度)
sigma<- sd(jjp$建材長度)
(15-mu)
0.11/(sigma/sqrt(10))
qnorm(0.025)
#-1.96<0.705353279<1.96,non reject h0,在0.05的顯著水準下，符合要求
#第七題
#h0= s<=16 h1s>16
da <- c(632.7,634.5,630.1,640.2,636.6,644.8,640.2,647.8,639.6,643.0)
sd(da)
x <- (10-1)*sd(da)/16
x
qchisq(0.05,df=9,lower.tail = TRUE)
#3.110494<3.325113 reject h0,填裝變異數不符合要求
#第八題
qqnorm(jjp$PM2.5值)
#第九題
#h0 mu>=82 h1<82
m<-mean(jjp$PM2.5值)
sigma<- sd(jjp$PM2.5值)
(m-82)/(sigma/sqrt(31)) 
qnorm(0.05)
#-0.0757>-1.644 reject h0 顯著水準????=0.05時，顯著低於平均數
#第十題
mu <- mean(jjp$年齡)
install.packages("BSDA")
library(BSDA)
z.test(jjp$年齡, alternative = "two.sided", mu=mean(jjp$年齡), sigma.x = sd(jjp$年齡), conf.level = 0.90)
#LCL=37.36893,UCL=41.63107
#第十一題
#h0 p1-p2=0 h1 p1-p2<0
p1<-0.27
p2<-0.35
p<-(200*0.27+200*0.35)/400
(p1-p2)/sqrt(p*(1-p)*(1/200+1/200))
qnorm(0.05)
# reject ho, 有足夠證據證明此調查
#第十二題
#h0 sd1!=sd2 h1 sd1=sd2
s1<-sd(jjp$供應商1)
s2<-sd(jjp$供應商2)
s1/s2
qf(0.05,df1=19,df2=19,lower.tail = TRUE)
qf(0.05,df1=19,df2=19,lower.tail = FALSE)
# reject h0 ,變異數不相同
#h1 = mu,h2 !=mu
mu1 <- mean(jjp$供應商1)
mu2 <- mean(jjp$供應商2)
t<-(mu1-mu2)/sqrt(s1*s1/20+s2*s2/20)
v<-(s1*s1/20+s2*s2/20)/((s1*s1/20)^2/19)+((s2*s2/20)^2/19)
qt(0.05 , df=v)
t
#non reject h0,兩供應商無顯著差異