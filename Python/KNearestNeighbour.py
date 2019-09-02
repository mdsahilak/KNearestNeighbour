import numpy as np
from sklearn.datasets import load_iris
from sklearn.metrics import accuracy_score
import random
from scipy.spatial import distance
from sklearn.model_selection import train_test_split

iris = load_iris()

data = iris.data
targets = iris.target

(train_data, test_data, train_target, test_target) = train_test_split(data, targets, test_size=50)

# Custom classifier

def euc(a, b):  # euclidean distance calculation helper
    return distance.euclidean(a, b)


class ScrappyKNN():  # Custom classifier
    def fit(self, train_data, train_target):
        self.train_data = train_data
        self.train_target = train_target

    def closest(self, row):
         best_dist = euc(row, train_data[0])
         best_index = 0
         for i in range(1, len(train_data)):
             dist = euc(row, train_data[i])
             if dist < best_dist:
                 best_dist = dist
                 best_index = i
         return self.train_target[best_index]

    def predict(self, test_data):
        predictions = []
        for row in test_data:
            label = self.closest(row)
            predictions.append(label)
        return predictions


myClassifier = ScrappyKNN()
myClassifier.fit(train_data, train_target)

predictions = myClassifier.predict(test_data)
correct_answer = test_target
myClassifier_accuracy = accuracy_score(test_target, predictions)

print(predictions)
print(correct_answer)

print("- - - - - - - - - - - - - - - - - - - - - - - - ")
print("Accuray:", myClassifier_accuracy*100, "%")
print("- - - - - - - - - - - - - - - - - - - - - - - - ")
