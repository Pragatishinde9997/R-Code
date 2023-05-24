"Hello World!"
'Pragati'
5
6 

#variable
name1="Harshal"
name1
name2='Pragati'
name2
name="Harsh"
name
age=25
age
x=21
x
num="20"
num
age=age+5
age
num=num+5   #error
num
4*8

text="Excellent"
paste("ExcelR is",text)  #concatenate/combine 
paste("Students are",text)
paste("My name is",name2)

#assign same value to multiple variable in one line
var1=var2=var3="Orange"

#legal variable names
myvar<-"Meenal"
my_var="Snehal"
myVar="Ganesh"
MYVAR="Manish"
myvar2="Lalith"
this.year=2023

#illegal variable names
2myvar<-"s"
my-var<-"s"
my var<-"s"
my_v@ar<-"s"
TRUE<-"s"

#Data Types in R
#Numeric/float-decimal whole +ve -ve
x=10
class(x)
class(name)
#Integer-whole +ve -ve L
y=1000L
class(y)
#Character/string
x="R is exciting"
class(x)
#logical/Boolean
x=TRUE #TRUE,T,FALSE,F
class(x)

3>5
5>3
5==5  #equal to
1!=6  #not equal to

###########19-05-23#############
#Arithmetic Operator
x=20
y=3
x+y
x-y
x*y
x/y   #gives Quotient
x^2
x%%y #modulus gives remainder
x %/% y   #integer division

#Constants
2*pi*6378
??constants
LETTERS  #all capital alphabets
letters
pi

#Assignment operator
x=50
x<-30

#Built in function
max(25,78,10)  #maximum
min(2,10,3)   #minimum
sqrt(25)  #square root
abs(-4.5)  #absolute vlue

#Data Structure:Vectore,dataframes
#homogeneous vectors
#Vectors of strings
fruits=c("Banana","Apple","Orange","Strawberry")  #combine function
fruits
class(fruits)


#vector of numerical
n1=c(1,2,3,4)
n2=c(T,F,TRUE,FALSE)
class(n1)
class(n2)

#Heterogeneous vectors
mix<-c(81.5,2,TRUE,"Mango",5L,F)  #character has more priority
class(mix)

x=c(2,5,8,4)
y=c(1,9,9,9)
x+y
x-y
(x+y)*1.5
x*5

#Sequence
1:10
1:100
45:47
seq(1,50,5)  #start value,end value,step/increment value
seq(1,50,by=3) 
seq(1,10)   #by default increment is 1
seq(10,1,-2)
n1=1.5:6.3   #by default increment is 1
n1

#Repetition
rep(45,5)
rep("Hi",4)

#Random Sample
sample(1:50,8)
sample(1:10,200)  #error default value
sample(1:10,200,replace=TRUE)
sample(c("HP","APPLE","LENOVO"),7,replace=T)
sample(c("HP","APPLE","LENOVO"),2)

##########################################
#Indexing/Accessing vector elements
x=c(2,5,8,7)
x[4]
x[1]
x[c(1)]
x[c(1,3)]
x[-1]  #Exclude first element it gives
x[-2]  #Exclude second element
x[c(-1,-2)]  #exclude 1 and 2 element

x[1]=3  #assigning 3 in first element
x
x[-1]=5  #excluding first element all are 3
x

y=c(1,9,9,9)
y
y<9
y[y<9]=7
y
y[y>7]=10
y

#Relational Operators with vectors
marks=c(60,70,80,90)
marks>50
marks==80
marks[marks>70]
marks[3:7]
marks[4]
marks[3]=97
marks
marks[6]=80
marks

names=c("Snehal","Minal","Komal","Pranjal")
names
"minal" %in% names  #perfect matching given is in names or not
"Minal" %in% names

############## 22-05-23##################
price=c(2999,449,29,650,2800,192,9384,373,474,4745)
price[2:7]

#select elements from a vector with condition
price[price>1000]
sort(price)  #ascending order
sort(price,decreasing =T)    #descending order ####help(sort)-for help

help(mean)
length(price)
mean(price)

help(paste)
paste(1:12)
nth=paste(1:12,c("st","nd","rd",rep("th",9)))
nth
month.name  # full month name
month.abb  #jan,feb,march,etc....
paste(month.abb,"is the" ,nth,"month of the year.")

#Basic functions on vectors
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
help(mode)
mode(price)  #not mode calculate

#data frames
#slicing data frames
a=c(42,18,91,87,66)
b=c("p","q","r","s","t")
data.frame(a,b)
df=data.frame(a,b)
df


df1=data.frame(Training=c("Strength","Stamina","Other"),Pulse=c(100,150,120),Duration=c(60,30,45))
df1
df1[,1]   #all rows in 1st column
df1[2,]
df1[,]
df1$Training
df1[df1$training=="Strength",]   #rows corresponding to strength

df2=data.frame(height=c(150,160),weight=c(65,72))
df2

food=data.frame(name=c("Pav Bhaji","Paneer Masala","Kaju Katli","Butter Chicken","Gulabjamun","Mutton Biryani"),type=c("Veg","Veg","Veg","Nonveg","Veg","Nonveg"),taste=c("spicy","spicy","sweet","spicy","sweet","spicy"),price=c(120,235,420,340,90,315))
food
#rows corresponding to Veg items
food[food$type=="Veg",] 

#food names and prices of all nonveg items
food[food$type=="Nonveg",c(1,4)] 
#or
food[food$type=="Nonveg",c("name","price")] 

#all spicy food with price less than 300
food[food$price<300 & food$taste=="spicy",]  

#all spicy food or price less than 300
food[food$price<300 | food$taste=="spicy",] 

################## 23-05-2023 #############################
#built in data sets
Orange
mtcars

dim(mtcars)   #no of rows and no of columns i.e.dimensions
nrow(mtcars)   #no of rows
ncol(mtcars)   #no of columns
str(mtcars)   #structure-col names, data type and values
summary(mtcars)   #statistical data

help(mtcars)
mtcars$cyl   #individual col cyl values
table(mtcars$cyl)   #threre are 11 cars having 4cylinders, 7 cars having 6cylinder and 14 cars having 8 cylinder
mtcars$gear
table(mtcars$gear)

#UsArrests dataset
USArrests
help("USArrests")
View(USArrests)
head(USArrests)   #by default shiws first 6 records
tail(USArrests)   # last 6 records
head(USArrests,8)
tail(USArrests,10)

#check all available datasets
data()

