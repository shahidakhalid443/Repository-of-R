# activating repositories and libraries----
setRepositories()
#install packages----
install.packages("writeXLS",dependencies = TRUE)
install.packages("readxl",dependencies = TRUE)
install.packages("ggplot2",dependencies = TRUE)
install.packages("tidyverse",fddependencies = TRUE)
library(writeXLS)
library(readxl)
library(ggplot2)
library(tidyverse)
#impoting and exporting  datasets----
data()  # display datasets
pf <- trees
head(pf)
View(pf)


#exporting datasets----
pf <- read_xls("trees.xls")
 View(pf)
 #ggplot:Geometry of graphics----
 #  1: mapping(data on x and y axis)
 #  2: aesthetics(colors ,shapes,size etc)
 #  3: geometry(konsa plot bnana ha )
 # plotting----
 colnames(pf)
 #bar plot----
 ggplot(pf, mapping = aes(x = Girth))+geom_bar()
 
 ggplot(pf, mapping = aes(x = Height))+geom_bar()
 
 #point plot----

 ggplot(pf, mapping = aes(x = Girth, y = height))+geom_point()+
 ggplot(pf, mapping = aes(x = Height, y = Girth))+geom_point()+labs(title = "Tree Girth vs. Height", x = "Height(ft)", y = "Girth(in)")
 ggplot(pf, mapping = aes(x = Height, y = Girth, color = Volume))+geom_point() + scale_color_gradient(low = "brown", high = "lightpink")
 ggplot(pf, mapping = aes(x = Height, y = Girth,  color = Volume))+geom_point() + scale_color_manual(values = c("#E69F00", "#56B4E9", "#009E73"))
 ggplot(pf, mapping = aes(x = Height, y = Girth,  color = Volume))+geom_point()+ scale_color_gradient(low = "blue", high = "black") + labs(title = "Tree Girth vs.Height", x = "Height (ft)", y = "Girth (in)")
 ggplot(pf, mapping = aes(x = Height, y = Volume))+geom_point(aes(color="red")) + theme(panel.background = element_rect(fill="lightblue"), panel.grid = element_line(color = "grey"))
                                                              
 #box plot----
 ggplot(pf, mapping = aes(x = Girth, y = Volume))+geom_boxplot()
 ggplot(data = trees , aes(x = Girth, y = Volume , color = Volume))+geom_boxplot()+scale_color_gradient(low = "orange", high = "purple")
 ggplot(data = trees , aes(x = "", y = Height))+geom_boxplot(fill = "purple", color = "black")+ ggtitle("tree hights box plot")+ theme(panel.background = element_rect(fill="lightblue"), panel.grid = element_line(color = "brown"))
 # histogram plot----
 ggplot(data = trees , aes(x = Height))+geom_histogram(binwidth = 1, fill="orange", color= "black")
 ggplot(data = trees , aes(x = Height))+geom_histogram(binwidth = 1, fill="lightgreen", color= "black") + theme(panel.background = element_rect(fill="lightpink"), panel.grid = element_line(color = "black"))
 # Density plot----
 ggplot(data = trees , aes(x = Height))+geom_density(fill="purple", alpha=0.2, color="black")
 ggplot(data = trees , aes(x = Height))+geom_density(fill="blue", alpha=0.2, color="black")+ theme(panel.background = element_rect(fill="lightgreen"), panel.grid = element_line(color = "black"))
 ggplot(trees, aes(x = Girth)) + geom_density() + theme(panel.grid.major = element_line(size = 0.1, color = "lightblue"),panel.grid.minor = element_line(size = 0.1, linetype = "dashed", color = "pink"))
                                                                                                   
                                                             