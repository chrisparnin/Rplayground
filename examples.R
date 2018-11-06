# Will not have NA
bad_train <- read.csv('train.csv')
train <- read.csv('train.csv', na.strings = c("NA",""))
#train[is.na(train$Embarked), ]

train[is.na(train$Embarked)==TRUE, ]

mean(train$Fare[train$Pclass==3 & train$Embarked=='S'], na.rm = TRUE)

