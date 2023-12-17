
# Read Data Table
Google_Trends_Tesla<-read.csv("https://raw.githubusercontent.com/tidydatayt/google_trends_business_research/main/Google_Trends_Tesla_cars_population_density.csv")
head(Google_Trends_Tesla)


# plot it
library(ggplot2)
library(ggrepel)
ggplot(Google_Trends_Tesla, aes(x=Density.Ranking, y=tesla.cars))+ geom_point(color = "blue", size = 3)+labs(x="Density Ranking", y = "Google Trends of Tesla Cars")+ theme_bw()+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) + theme(axis.title.x = element_text(size = rel(1.5), angle = 00))+
  theme(axis.title.y = element_text(size = rel(1.5), angle = 90))+geom_smooth(method=lm)+geom_label_repel(aes(x=Density.Ranking, y=tesla.cars, label = State))