- - -
# KNearestNeighbour using Swift
## Implementing a KNearestNeighbour Classifier in Swift and comparing it with a python equivalent.
### This Repo has a Python and Swift version of a simple k=1 NearestNeighbour Classifier used to classify flowers in the Iris Dataset.
- - -
> Tried implementing a K-=1 NearestNeighbour Classifier using Swift. Feedback/Issues appreciated.

* The main pain point was that i could not just import scikit-learn or numpy or other Machine Learning or Mathematical libraries. So, i had to use custom implementations of random train_test split, accuracy calculations and euclidean distance calculation(These can be found in the sources directory of the Xcode Playground or in Swift/JustTheCode if you do not have Xcode).

* I could have used [Swift For TensorFlow - S4TF ](https://github.com/tensorflow/swift) and tye Python Interop feature, but that would require installing another toolchain and changing the build settings. Moreover, this is a very basic algorithm, so it is not worth messing with the build settings 😆.

* Unlike the python version, Swift does not have scikit's load_irirs() function (from Scikit) to load the iris dataset. So I used a helper struct to hold the data and metadata. 

* Both the Python and Swift version look quite similar but the swift one has types(Thank God!).

* If you would like to see another Classifier Algorithm in Swift, heres a [Generic Decision Tree Classifier] (https://github.com/mdsahilak/DecisionTreeClassifier)
- - -
