#This is a part of the lecture from Friday Oct 16th
#I just straight copy-pasted the code from the file with the same name on the professor's GitHub
# Code for performing multivariate analysis with community data

# The vegan package will be used for the multivariate part
library(vegan)

# Using the data inside vegan
data(dune)

# Looking inside the dataset
dune # whole dataset

# Looking at few rows
head(dune)

# Principal Component Analysis with vegan
multipca <- pca(dune)
multipca

# Principal Components Analysis without vegan --> multivar <- prcomp(dune); then you can just use "multivar" to look at it

# Looking at the percentage of variance explained by each PC
summary(multipca)

# How much variability is explained by the first two components?
# proportion of PC1: 0.2947
# percentage of explained variability by PC1: 29.47%

# Exercise: calculate the percentage of explained variability by PC2
# proportion of PC2: 0.2157
# percentage of explained variability by PC2: 21.57%

# Exercise: we are going to make a graph with just two dimensions over the 20 original dimensions; what is the total variability explained by PC1 + PC2? 
# I do not see the command for the graph, so I am assuming that it just pops out somehow; at any rate, you also have the commands from the Statistics course
# Total explained variability 
totvar = 29.47 + 21.57
totvar # 51.04

# Make the final plot
plot(multipca)
