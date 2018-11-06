import pandas as pd;

train = pd.read_csv("train.csv")
fuzzed = pd.read_csv("fuzzed.csv")
print train[train.Embarked.isnull()]

print train.Fare[(train.Pclass==3) & (train.Embarked=='S')].mean()

print train.Fare[(train.Pclass==1)].mean()
print fuzzed.Fare[(fuzzed.Pclass==1)].mean()
