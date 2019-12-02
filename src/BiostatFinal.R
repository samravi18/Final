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
#Saves results in a textfile
cat("Results", file = "tests.txt", append = TRUE)
capture.output(yourOutput, file = "tests.txt", append = TRUE)

# Test through one command
yourOutput



