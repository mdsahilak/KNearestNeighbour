import Foundation

public func accuracyScore(predictions: [Double], answers: [Double]) -> Double {
    guard predictions.count == answers.count else { fatalError("predictions and answers do not have equal count") }
    
    let totalScore = Double(predictions.count)
    var correctScore: Double = 0
    
    for i in 0..<predictions.count {
        if predictions[i] == answers[i] {
            correctScore += 1
        }
    }
    
    return correctScore / totalScore
}
