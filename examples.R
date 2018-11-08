library(ggplot2)

# Will not have NA
bad_train <- read.csv('train.csv')
train <- read.csv('fuzzed.csv', na.strings = c("NA",""))
#train[is.na(train$Embarked), ]

train[is.na(train$Embarked)==TRUE, ]

train[is.na(train$Fare)==TRUE, ]

mean(train$Fare[train$Pclass==1])
mean(train$Fare[train$Pclass==1], na.rm = TRUE)

# Needed different params for read.csv for ggplot/geom_violin to play nice
train_v <- read.csv("fuzzed.csv", sep=",", header=TRUE, stringsAsFactors=TRUE)
# Lines that needed to be executed for the violin plot to work!
train_v$Survived=as.character(train_v$Survived)
train_v = na.omit(train_v)
# Old
p<-ggplot(train_v,aes(factor(Pclass),Age))
p+geom_violin(aes(fill=Survived))
# New
p<-ggplot(train_v,aes(factor(Pclass),Age))
p<-p+geom_violin(aes(fill=Survived))
p<-p+scale_fill_manual(values = c("#f0bcb9", "#baccdc"))
p+theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), 
        panel.background = element_rect(fill = "white", colour = "grey", size = 0.5, linetype = "solid"))
