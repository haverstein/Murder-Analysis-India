# Data launch
murder_data = read.csv(file.choose())
murder_data = na.omit(murder_data)

# Extracting data
murder_total = t(murder_data[29,4:10])

# Plotting aggregate data
murder_ts = read.zoo(murder_total)
plot.ts(murder_total,
        main="Total number of murders(2015-2021)",
        type='o',pch=21,bg='green',col='green',
        axes=FALSE,
        xlab='Years',ylab='No. of murders')
axis(1,at=1:7,labels=2015:2021)
axis(2)
