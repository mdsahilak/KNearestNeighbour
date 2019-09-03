# KNearestNeighbour using Swift
## Implementing a KNearestNeighbour Classifier in swift and comparing it with a python equivalent.
### This Repo has a python and a swift version of a simple k=1, KNearestNeighbour classifier used to classify flowers using the Iris Dataset.
- - -
* As part of a course on machine learning, they taught how to implement a simple kNearestNeighbour classifier. But can it be implemented in swift? I tried it out here.

* The main pain point was that i could not just import scikit-learn or numpy or other Machine Learning and Mathematical libraries. So, i had to use custom implementations of random train_test split, accuracy calculations and euclidean distance calculation.

* I could have used the wonderful [Swift For TensorFlow - S4TF ](https://github.com/tensorflow/swift) and its python interop feature, but that would require installing another toolchain and changing the build settings. Also, this is a very basic algorithm, so.

* Also the unlike the python version, Swift does not have scikit's load_irirs() function to load the iris dataset. So i used a helper struct to hold the data and metadata. 

* That said, I think swift is the future of ML. Both the python and swift version look similar except for python's libraries part. That will all disappear as the S4TF ecosystem matures. #SwiftWorldDomination 😂👊 .
