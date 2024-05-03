north = c(4256,4176,3941,4109,4211,4353,4324)
x = 2015:2021
plot.ts(north,
        main="Trend In North India",
        type='o',pch=21,bg='#6495ED',col='#6495ED',
        axes=FALSE,
        xlab='Years',ylab='No. of murders')
axis(1,at=1:7,labels=2015:2021,col='#6495ED')
axis(2,col='#6495ED')
model = lm(north~x)
lines(predict(lm(north~x)),col='#45B8AC',lty='dashed')
summary(model)
