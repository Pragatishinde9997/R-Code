ages=c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary=c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)


plot(ages,salary)
plot(salary,ages)

help(plot)
##########################

#airquality=read.csv('path/airquality.csv',header=T)
airquality=datasets::airquality
head(airquality,10)  #top 10
tail(airquality,10)   #bottom 10
names(airquality)
colnames(airquality)
#
airquality[,c(1,2)]
df=airquality[,-6]   #excluded column no.6
df
summary(airquality[,1])   #summary of cloumn 1
#or
summary(airquality$Ozone) 
summary(airquality$Temp)  
airquality$Wind

###############Visualization#####
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type='p')
plot(airquality)
plot(airquality$Wind,type='l')
plot(airquality$Wind,type='b')
plot(airquality$Wind,xlab='Ozone Concentration',ylab='No. of Instances',main='Ozone levels in NY city',col='blue',type='b')
plot(airquality,col='red')
plot(airquality$Ozone,airquality$Solar.R,col='green')
plot(airquality$Solar.R,airquality$Ozone,col='pink')

####Horizontal bar plot
barplot(airquality$Ozone,main='Ozone Concentration in air',ylab='Ozone levels',col='pink',horiz=T,axes=F)
help(barplot)

###Histogram
hist(airquality$Temp)
hist(airquality$Temp,main='Solar Radiation values in air', xlab='Solar rad.',col='blue',border ='red')

######Boxplot
help(boxplot)
boxplot(airquality$Wind,main='Boxplot',col='blue',border ='red',horizontal =T)
boxplot.stats(airquality$Wind)$out   #Showing outliers

#Multiple box plots
boxplot(airquality[,1:4],main='Multiple Boxplot',horizontal =F,col='pink')

########