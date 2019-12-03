beer <- read.csv(file.choose())
head(beer)


beer$glassShape <- factor(beer$glassShape, levels = c("straight", "curved"))

pdf("Beerboxplot.pdf")
boxplot(drinkingMinutes ~ glassShape, data = beer)
dev.off()

yourOutput<-t.test(beer$drinkingMinutes ~ beer$glassShape, data = beer, var.equal = TRUE)
yourOutput
#Saves results in a textfile
cat("Results", file = "tests.txt", append = TRUE)
capture.output(yourOutput, file = "tests.txt", append = TRUE)

#one push button for all code: the boxplot will appeared as a saved file. The textfile titled tests.txt will have the saved t-test output.
source("BiostatFinal.R")




