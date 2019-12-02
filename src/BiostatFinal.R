install.packages("readxl")
Yes
library("readxl")
beer <- read_excel(file.choose())
head(beer)


beer$glassShape <- factor(beer$glassShape, levels = c("straight", "curved"))

pdf("Beerboxplot.pdf")
boxplot(drinkingMinutes ~ glassShape, data = beer)
dev.off()

yourOutput<-t.test(beer$drinkingMinutes ~ beer$glassShape, data = beer, var.equal = TRUE)

# Test through one command
yourOutput

as.data.frame(yourOutput)




