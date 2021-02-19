# Creating Box Plots Example ( using ggplot2 package)
# ToothGrowth dataset
# Teaching examples used from the R Cookboooks. 

library(ggplot2)
# Creating Box-plot
plot(ToothGrowth$supp, ToothGrowth$len) # using plot() function and pass it a factor of x-values and a vecctor of y-values.
#Formula Syntax
boxplot(len ~ supp, data = ToothGrowth) # if the tow vectors are in the same dataframe, you can use the formula syntax. With
# this syntax you can combine two variables on the x-axis. 
# put interaction  of two variables on x-axis
boxplot(len ~ supp + dose, data = ToothGrowth)
# with ggplot2 you can get the same results above. 
library(ggplot2)
qplot(ToothGrowth$supp, ToothGrowth$len, geom = "boxplot")
# if the two vectors are in the same dataframe, you can use the following syntax 
qplot(supp, len, data = ToothGrowth, geom = "boxplot")
# in ggplot2, the above is equvalent to:
ggplot(ToothGrowth, aes(x=supp, y=len)) + geom_boxplot()