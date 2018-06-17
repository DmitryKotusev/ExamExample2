//
//  main.swift
//  ExamExample2
//
//  Created by Dmitry Kotusev on 6/16/18.
//  Copyright © 2018 Dmitry Kotusev. All rights reserved.
//

import Foundation

print("Hello, World!")

var myString = "азбука молоко очки товарищ апплодисменты тренажер портрет яблоко суши кофе пицца автомат пулемет саранча таракан стойка солдат компьютер"

var words = myString.components(separatedBy: " ")

let stringVowel = "аеёиоуыэюяАЕЁОУЫЭЮЯ"
let alphabetVowel = Array(stringVowel)

var amountOfWordsWithVowels = 0
var averageLengthCount:Int = 0
var averageLength:Double = 0

var dict = [String: Int]()
let arrayOfWords = myString.components(separatedBy: " ")

for word in arrayOfWords{
    dict[word]=word.count
}

for word in dict.keys{
    var currentCount = 0
    for letter in word{
        if(alphabetVowel.contains(letter)){
            currentCount += 1
        }
    }
    if(currentCount > 3){
        amountOfWordsWithVowels += 1
    }
    averageLengthCount += dict[word]!
    print("\(word) - \(dict[word]!) - \(currentCount)")
}
print(dict.count)
averageLength = Double(averageLengthCount)/Double(dict.count)
print("Средняя длина слова: \(averageLength)")
print("Количсетво слов с гласными больше 3: \(amountOfWordsWithVowels)")
