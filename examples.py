import matplotlib
# Force matplotlib to not use any Xwindows backend.
matplotlib.use('Agg')
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

train = pd.read_csv("train.csv")
fuzzed = pd.read_csv("fuzzed.csv")

print train.Fare[(train.Pclass==3) & (train.Embarked=='S')].mean()

print train.Fare[(train.Pclass==1)].mean()
print fuzzed.Fare[(fuzzed.Pclass==1)].mean()

# Old
sns_plot = sns.violinplot(x='Pclass', y='Age', hue='Survived', data=train, split=True)
plt.savefig("Pyplot.png")
# Clear current figure
plt.clf()
# New
sns.set(rc={'figure.figsize':(11.7,11.7)}) 
sns.set_style("whitegrid", {'axes.grid' : False}) # Turns off grid on the left Axis.
sns_plot_new = sns.violinplot(scale="width", width=0.5, x='Pclass', y='Age', hue='Survived', data=train, split=False, inner=None, palette="Pastel1")
plt.savefig("Pyplot_new.png")