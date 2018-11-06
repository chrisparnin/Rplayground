import pandas as pd;

train = pd.read_csv("train.csv")
print train[train.Embarked.isnull()]

print train.Fare[(train.Pclass==3) & (train.Embarked=='S')].mean()