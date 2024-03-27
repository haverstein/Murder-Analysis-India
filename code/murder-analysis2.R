murder_data = read_excel(file.choose(),col_names = TRUE)

# Collecting Variables
y1=unlist(murder_data['2015'])
reg_pop = unlist(murder_data['Region Pop(in_bill)'])
r = unlist(murder_data['Region'])

y_2015 = y1/reg_pop
lm.fit = lm(y_2015 ~ r)
summary(lm.fit)

y2 = unlist(murder_data['2016'])
y_2016 = y2/reg_pop
lm.fit2 = lm(y_2016 ~ r)
summary(lm.fit2)

y3 = unlist(murder_data['2017']) 
y_2017 = y3/reg_pop
lm.fit3 = lm(y_2017 ~ r)
summary(lm.fit3)

y4 = unlist(murder_data['2018'])
y_2018 = y4/reg_pop
lm.fit4 = lm(y_2018 ~ r)
summary(lm.fit4)

y5 = unlist(murder_data['2019'])
y_2019 = y5/reg_pop
lm.fit5 = lm(y_2019 ~ r)
summary(lm.fit5)

y6 = unlist(murder_data['2020'])
y_2020 = y6/reg_pop
lm.fit6 = lm(y_2020 ~ r)
summary(lm.fit6)

y7 = unlist(murder_data['2021'])
y_2021 = y7/reg_pop
lm.fit7 = lm(y7 ~ r)
summary(lm.fit7)


c1 = coefficients(lm.fit)
coeff_matrix = matrix(c(coefficients(lm.fit)[-1],coefficients(lm.fit2)[-1],coefficients(lm.fit3)[-1]
                        ,coefficients(lm.fit4)[-1],coefficients(lm.fit5)[-1],coefficients(lm.fit6)[-1],
                        coefficients(lm.fit7)[-1]),nrow=7
                      )
rownames(coeff_matrix) = c(2015,2016,2017,2018,2019,2020,2021)
colnames(coeff_matrix) = c("East","North","NorthEast","South","West")

color = c("#fc7d0b","#57606c","#a3acb9","#5fa2ce","#c85200")
matplot(rownames(coeff_matrix),as.data.frame(coeff_matrix), type='l', xlab='Years', 
        ylab='Coefficients',col=color,main="Coeffiecients for different years",
        sub="Baseline: Central India")
abline(h=0,col='gray')
legend('bottomleft', legend=colnames(coeff_matrix), 
       pch=1.0,col=color,bty="n",inset = c(0, -0.02),title="Regions of India
       ")

