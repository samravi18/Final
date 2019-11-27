install.packages("readxl")
Yes
library("readxl")
beer <- read_excel(file.choose())
head(beer)


beer$glassShape <- factor(beer$glassShape, levels = c("straight", "curved"))

pdf("Beerboxplot.pdf")
boxplot(drinkingMinutes ~ glassShape, data = beer)
dev.off()


t.test(beer$drinkingMinutes ~ beer$glassShape, data = beer, var.equal = TRUE)
#Code used to save output. It also saves the history of other outputs.
sink("newconsole.txt")
savehistory("newconsole.txt")
