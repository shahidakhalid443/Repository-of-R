#active repositories-----
setRepositories()
#Installing and activating libraries or Packages----
install.packages("nycflights13", dependencies = TRUE)
library(nycflights13)
install.packages("tidyverse", dependencies = TRUE)
library(tidyverse)

#importing dataset----
gh<-nycflights13::flights
head(gh)
view(gh)

# Filter function----
may<-filter(gh, month == 5)
may
View(may)
may<-filter(gh, month == 5)

# To show specific value from data like. specific day of a month....
may<-filter(gh, month == 5, day == 16)
may

f <- filter(gh, origin == "LGA")
View(f)
Dep<-filter(gh, dep_delay > 2)
View(Dep)

# Operators Funtions----
# logical operators
#   & and ||
# By using Filter function...

A <- filter(gh, month == 6 | month == 8)# it will show all the values of these 2 months...
View(A)

B <- filter(gh, month == 8 & month == 9)# it will show commom values of the 2 months...
View(B) # it has zero observation bcz donoun months main koi b data commom nahi ha...

C <- filter(gh, month == 4 & !month == 5)# Take values of x(4), and remove common values and all the values of y(5)...
View(C)

C <- filter(gh, month>4 | month <8) # variable update hoga...or 4 se 8 k darmyan jo months hain wo show houn ge...
View(C)
#Unique function----
N<-unique(flights$month)     # to take unique values of a column...
View(N)
unique(sort(flights$month))   #for sorting the unique values...
unique(gh$origin)

# Distinct function----
distinct(gh, origin)     # Remove duplicate values from a variable...
R <- distinct(gh, origin)
View(R)
f<- distinct(gh, day)
View(f)

# Select function----
gh

G<- select(gh, "year", "month", "day")  # to show specific variables of data...
view(G)
H<- select(gh, "year", "month", "day","dep_delay")
View(H)

# VECTOR----
#Vector is an alternative of array
a <- c(24,26,28)     #we write c to show variables in brackets...
a
class(a)

# Pipe Funtion----
# %>% mean sequence or continuity...

gh %>% group_by(carrier)

gh %>% group_by(carrier) %>% summarise(c = mean(hour))# har group ka alaihda se mean nikala ha...

mean(gh$hour) # kisi aik variable ka mean nikalna...

gh %>% group_by(origin) %>% summarise(sumi = sum(flight)) %>% arrange(sumi) #aik origin main se jitni flights ne takeoff kiya uska sum nikala... 
#or ussi sum ki base pr arrange karke result diya...

sum(gh$flight)   #poore dataset ki flights ka sum...
