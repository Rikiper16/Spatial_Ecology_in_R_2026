#Also began on Oct 16th; also directly copy-pasted from the professor's GitHub
# Once we have seen how species are related to each other in space, we can proceed to look at how they are related in time

# install.packages("overlap")
library(overlap)

# Using the dataset
data(kerinci) # https://it.wikipedia.org/wiki/Parco_nazionale_di_Kerinci_Seblat
kerinci
head(kerinci)

# If you want to look at the end of the dataset: tail()
tail(kerinci)

# getting a summary of the dataset
summary(kerinci)
#Also, remember to install and load the package "igraph"
