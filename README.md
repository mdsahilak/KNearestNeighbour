# KNearestNeighbour using Swift
## Implementing a KNearestNeighbour Classifier in swift and comparison with the python equivalent.
### This Repo has a python and a swift version of a simple k=1, KNearestNeighbour classifier used to classify flowers using the Iris Dataset.

As part of a course on machine learning, they taught how to implement a simple kNearestNeighbour classifier. But can it be implemented in swift? This is tried out here. You can run both and see for yourself.
- - -
The main pain point was that i could not just import scikit-learn or numpy or other Machine Learning and Mathematical libraries. So, i had to use custom implementations of random train_test split, accuracy calculations and euclidean distance calculation.
- - - 
Also the unlike the python version, Swift does not have scikit's load_irirs() function to load the iris dataset. So i used a helper struct to hold the data as well as the metadata. 
