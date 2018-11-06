# Will not have NA
bad_train <- read.csv('train.csv')
train <- read.csv('fuzzed.csv', na.strings = c("NA",""))
#train[is.na(train$Embarked), ]

train[is.na(train$Embarked)==TRUE, ]

train[is.na(train$Fare)==TRUE, ]

mean(train$Fare[train$Pclass==1])
mean(train$Fare[train$Pclass==1], na.rm = TRUE)
