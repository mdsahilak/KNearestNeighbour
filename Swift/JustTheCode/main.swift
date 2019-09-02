//
//  main.swift
//  
//
//  Created by Muhammed Sahil on 03/09/19.
//

import Foundation

func consoleLineBreak() {
    print("- - - - - - - - - - - - - - - - - - - - - - - - - - - -")
}


var data = IrisDataset.data
var targets = IrisDataset.targets

//testing data and testing targets ids
var testIDs: [Int] = []

// fill testIDs array
// Using an array of 50 random indices (For testing set) with guarenteed non-repetition.
for _ in 0..<50 {
    var randomInt = Int(arc4random_uniform(149))
    var success = false
    while success == false {
        if testIDs.contains(randomInt) {
            randomInt = Int(arc4random_uniform(149))
        } else {
            success = true
        }
    }
    testIDs.append(randomInt)
}

testIDs.sort{ $0 > $1 }  // order the indices for test set in descending order as it is easier to remove the last element from an array as arrays in swift are ordered lists.

var DataTest: [[Double]] = []
var TargetsTest: [Double] = []

// Splitting the data into training and testing data
for id in testIDs {
    //print(id)
    let testValData = data.remove(at: id)
    let testValTarget = targets.remove(at: id)
    DataTest.append(testValData)
    TargetsTest.append(testValTarget)
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - -
// - - - - - - - - - - - - - - - - - - - - - - - - - - -

// Actual Classifier

struct ScrappyKNN {
    var dataTrain: [[Double]] = []
    var targetsTrain: [Double] = []
    
    mutating func fit(trainingData: [[Double]], trainingTargets: [Double]) {
        self.dataTrain = trainingData
        self.targetsTrain = trainingTargets
    }
    
    func nearestNeighbour(for pos: [Double]) -> Double {
        var bestDistance = calculateEucDist(pos, dataTrain[0])
        var bestIndex = 0
        
        for i in 1..<dataTrain.count{
            let distance = calculateEucDist(pos, dataTrain[i])
            if distance < bestDistance {
                bestDistance = distance
                bestIndex = i
            }
        }
        return targetsTrain[bestIndex]
    }
    
    func predict(testingData: [[Double]]) -> [Double] {
        var predictions: [Double] = []
        for row in testingData {
            let label = nearestNeighbour(for: row)
            predictions.append(label)
        }
        return predictions
    }
    
}


// Lets test the classifier

var myClassifier = ScrappyKNN()
myClassifier.fit(trainingData: data, trainingTargets: targets)

let predictions = myClassifier.predict(testingData: DataTest)

consoleLineBreak()
print(predictions)
consoleLineBreak()
print(TargetsTest)
consoleLineBreak()
print("Accuracy:", accuracyScore(predictions: predictions, answers: TargetsTest)*100, "%")
consoleLineBreak()
