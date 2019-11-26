install.packages("readxl")
Yes
library("readxl")
beer <- read_excel(file.choose())
head(beer)
