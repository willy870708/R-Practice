#�Ĥ@�D
#�@
p1=boxplot(example3_7$��ͬ��O��X)
d=density(example3_7$��ͬ��O��X)
p2=plot(d)
par(TRUE)
p3=hist(example3_7$��ͬ��O��X,freq=FALSE)
#�G
rug(jitter(example3_7$��ͬ��O��X))
lines(density(example3_7$��ͬ��O��X),col="blue",lwd=5)
#�T
stem(example3_7$��ͬ��O��X)
#�|
summary(example3_7$�ʧO)
summary(example3_7$�a�x�Ҧb�a)
summary(example3_7$��ͬ��O��X)
#�ĤG�D
plot(x=example3_7$��ͬ��O��X,y=example3_7$�ʧO)
par(new=TRUE)
plot(x=example3_7$��ͬ��O��X,y=example3_7$�a�x�Ҧb�a,xlab="")
#�ĤT�D
p_hat=322/500
x<-qnorm(0.025)*sqrt(p_hat*(1-p_hat)/500)
p_hat-x
p_hat+x
#�ĥ|�D
e<-sum(c(mydata2$���X��~��)*c(mydata2$���v))
e
v<-sum(c(mydata2$���X��~��-exp)^2 * c(mydata2$���v))
v
s<-sqrt(v)
s
#�Ĥ��D

#�Ĥ��D
#h0 u=15,h1 u!=15
mu<- mean(jjp$�ا�����)
sigma<- sd(jjp$�ا�����)
(15-mu)
0.11/(sigma/sqrt(10))
qnorm(0.025)
#-1.96<0.705353279<1.96,non reject h0,�b0.05����ۤ��ǤU�A�ŦX�n�D
#�ĤC�D
#h0= s<=16 h1s>16
da <- c(632.7,634.5,630.1,640.2,636.6,644.8,640.2,647.8,639.6,643.0)
sd(da)
x <- (10-1)*sd(da)/16
x
qchisq(0.05,df=9,lower.tail = TRUE)
#3.110494<3.325113 reject h0,����ܲ��Ƥ��ŦX�n�D
#�ĤK�D
qqnorm(jjp$PM2.5��)
#�ĤE�D
#h0 mu>=82 h1<82
m<-mean(jjp$PM2.5��)
sigma<- sd(jjp$PM2.5��)
(m-82)/(sigma/sqrt(31)) 
qnorm(0.05)
#-0.0757>-1.644 reject h0 ��ۤ���????=0.05�ɡA��ۧC�󥭧���
#�ĤQ�D
mu <- mean(jjp$�~��)
install.packages("BSDA")
library(BSDA)
z.test(jjp$�~��, alternative = "two.sided", mu=mean(jjp$�~��), sigma.x = sd(jjp$�~��), conf.level = 0.90)
#LCL=37.36893,UCL=41.63107
#�ĤQ�@�D
#h0 p1-p2=0 h1 p1-p2<0
p1<-0.27
p2<-0.35
p<-(200*0.27+200*0.35)/400
(p1-p2)/sqrt(p*(1-p)*(1/200+1/200))
qnorm(0.05)
# reject ho, �������Ҿ��ҩ����լd
#�ĤQ�G�D
#h0 sd1!=sd2 h1 sd1=sd2
s1<-sd(jjp$������1)
s2<-sd(jjp$������2)
s1/s2
qf(0.05,df1=19,df2=19,lower.tail = TRUE)
qf(0.05,df1=19,df2=19,lower.tail = FALSE)
# reject h0 ,�ܲ��Ƥ��ۦP
#h1 = mu,h2 !=mu
mu1 <- mean(jjp$������1)
mu2 <- mean(jjp$������2)
t<-(mu1-mu2)/sqrt(s1*s1/20+s2*s2/20)
v<-(s1*s1/20+s2*s2/20)/((s1*s1/20)^2/19)+((s2*s2/20)^2/19)
qt(0.05 , df=v)
t
#non reject h0,������ӵL��ۮt��