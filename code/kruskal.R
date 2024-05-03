columns = c("2015","2016","2017","2018","2019","2020","2021")
data = c()
region = c()
for (i in 1:length(columns)){
  agg = murder_data[columns[i]]/murder_data$`Region Pop(in_bill)`
  data = c(data,agg)
  region = c(region,murder_data$Region)
}
data = c(unlist(murder_data[columns]))
data = data/murder_data$`Region Pop(in_bill)`
kruskal.test(data,region)
pairwise.wilcox.test(data, region, p.adjust.method = "bonferroni")
