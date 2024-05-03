# Data launch
murder_data = read_excel(file.choose(),col_names = TRUE)
murder_data = na.omit(murder_data)

# Extracting data
murder_total = t(murder_data[29,4:10])

# Plotting aggregate data
murder_ts = read.zoo(murder_total)
plot.ts(murder_total,
        main="Trend Line Fitting",
        type='o',pch=21,bg='#6495ED',col='#6495ED',
        axes=FALSE,
        xlab='Years',ylab='No. of murders')
axis(1,at=1:7,labels=2015:2021,col='#6495ED')
axis(2,col='#6495ED')

standardize = function(vec){
  r = (vec-mean(vec))/sd(vec)
  return(c(r,mean(vec),sd(vec)))
}
destandardize = function(vec,m,std){
  r = vec*std + m
  return(r)
}

x = 2015:2021
# Linear Trend
lines(predict(lm(murder_total~x)),col='#45B8AC',lty='dashed')

# Exponential Trend
stand_x = head(standardize(x),-2)
lines(predict(lm(murder_total~exp(stand_x))),col='#C3447A',lty='dashed')

# Inverse exponential trend
lines(predict(lm(murder_total~exp(-stand_x))),col='#98B4D4',lty='dashed')

legend("topright",
       legend=c("Linear","Exponential","Negative Exponential"),
       fill=c('#45B8AC','#C3447A','#98B4D4'),text.col = "#6495ED",
       cex=0.75,bty = 'n',title='Trend Lines',title.col = 'black',inset = 0)      
years = stand_x
model = lm(murder_total~exp(-years))
cat("The fitted trend line model is:\n")
print(paste("murders =",coefficients(model)[1],
            " + ",coefficients(model)[2],"*exp(-years)"))
model

## Spatial Analysis
india_sf = st_read("C:/Users/Admin/Desktop/Notes/Sem 6/Project/Data/spatial-files/
                   India States/")

