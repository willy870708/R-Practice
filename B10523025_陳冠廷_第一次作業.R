#第一題
class(example1_4)
grade <-c(example1_4$分數)
grade
mean(grade)
median(grade)
max(grade)-min(grade)
sd(grade)
#第二題
summary(example2_1 $社區)#社區次數分配
summary(example2_1 $性別)#性別次數分配
summary(example2_1 $態度)#態度次數分配
prop(summary(example2_1 $態度))
#第三題
com<-table(example2_1$社區)
barplot(com,
     main="社區",
     xlab="社區",
     ylab="數量")
sex<-table(example2_1$性別)
barplot(sex,
        main="性別",
        xlab="性別",
        ylab="數量")
att<-table(example2_1$態度)
barplot(att,
        main="態度",
        xlab="態度",
        ylab="數量")
#第四題
pie(com)
fan.plot( table(example2_1$社區), max.span = pi,
          labels = paste(table(example2_1$社區)),
          main = "社區")
pie(sex)
fan.plot( table(example2_1$性別), max.span = pi,
          labels = paste(table(example2_1$性別)),
          main = "性別")
pie(att)
fan.plot( table(example2_1$態度), max.span = pi,
          labels = paste(table(example2_1$態度)),
          main = "態度")

#第五題
test <- seq(160,280,by=10)
data<-table(cut(example2_2$銷售額,breaks=test))
prop.table(table(cut(example2_2$銷售額,breaks=test)))
cumsum(prop.table(table(cut(example2_2$銷售額,breaks=test))))
#第六題
hist(example2_2$銷售額,main="(a)普通",xlab="銷售額",ylab="次數")
hist(example2_2$銷售額,main="(b)分成20組",xlab="銷售額",ylab="次數",breaks=20,col="gray")
hist(example2_2$銷售額,main="(c)增加軸鬚線和核密度線",xlab="銷售額",ylab="密度",breaks=20,col="gray",freq=FALSE)
rug(jitter(example2_2$銷售額))
lines(density(example2_2$銷售額),col="blue",lwd=2)
hist(example2_2$銷售額,main="(d)增加常態密度線",xlab="銷售額",ylab="密度",breaks=20,col="gray",freq=FALSE)
rug(jitter(example2_2$銷售額))
lines(dnorm(example2_2$銷售額),col="blue",lwd=2)

#第七題
data<- example2_2$銷售額
stem(data,scale = 1)
#第八題
plot(x=example2_4 $銷售收入,
     y=example2_4 $銷售網站數,
     main="重疊散佈圖")
par(new=TRUE)
plot(x=example2_4 $銷售人員,
     y=example2_4 $廣告費用,
     main="重疊散佈圖",
     axes=FALSE,
     xlab="",
     ylab="")
#第九題
plot(example2_4)
#第十題
p1<-(example3_5 $娜特莉婭.帕傑林娜)
p2<-(example3_5$郭文珺)
p3<-(example3_5$卓格巴德拉赫.蒙赫珠勒)
p4<-(example3_5$妮諾.薩盧克瓦澤)
p5<-(example3_5$維多利亞.柴卡)
p6<-(example3_5$萊萬多夫卡.薩貢)
p7<-(example3_5$亞斯娜.舍卡裡奇)
p8<-(example3_5$米拉.內萬蘇)
mean(p1)
mean(p2)
mean(p3)
mean(p4)
mean(p5)
mean(p6)
mean(p7)
mean(p8)
sd(p1)
sd(p2)
sd(p3)
sd(p4)
sd(p5)
sd(p6)
sd(p7)
sd(p8)
100 * sd(p1) / mean(p1)
100 * sd(p2) / mean(p2)
100 * sd(p3) / mean(p3)
100 * sd(p4) / mean(p4)
100 * sd(p5) / mean(p5)
100 * sd(p6) / mean(p6)
100 * sd(p7) / mean(p7)
100 * sd(p8) / mean(p8)
boxplot(example3_5)



