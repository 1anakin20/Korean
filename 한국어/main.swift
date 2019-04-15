//
//  main.swift
//  한국어
//	기유 시간
//
//  Created by Tomas Daniel Nieto on 2019-04-10.
//  Copyright © 2019 Tomas Daniel Nieto. All rights reserved.
//

import Foundation

// All korean words and their english equvalent
// -PS may need to find a more efficient way to keep the list while growing
let koToEnglish = ["우유": "milk",
				   "아이": "child",
				   "우의": "friendship",
				   "자유": "free",
				   "시간": "time",
				   "불": "fire",
				   "예": "yes",
				   "이": "this",
				   "이미지": "image",
				   "바나나": "banana",
				   "한국": "korea",
				   "한국어": "korean",
				   "한녕하세요": "hello",
				   "한녕히 게세요": "goodbye",
				   "도시": "city",
				   "의자": "chair",
				   "탁자": "table",
				   "선생님": "teacher",
				   "어서 오세요": "welcome",
				   "나무": "tree",
	] as [String : String]

// korean choice
func chooseKoreanWordFromArray() -> String {
	let dictionaryKoreanEnglish = koToEnglish
	let randomVal = dictionaryKoreanEnglish.randomElement()
	let koWord = randomVal!.key
	return koWord
}


// english choice
func chooseEnglishWordFromArray() -> String {
	let dictionaryEnglishKorean = koToEnglish
	let randomVal = dictionaryEnglishKorean.randomElement()
	print(randomVal!.value)
	let enWord = randomVal!.key
	return enWord
}

// For korean choice
func checkAnswerKoreanToEnglish(userInput: String, randKoWord: String) -> String {
	let dictionaryKoreanEnglish = koToEnglish
	let stringKoreanEnglish = dictionaryKoreanEnglish[randKoWord] ?? "Default value checkAnswerKoreanEnglish"
	if(stringKoreanEnglish == userInput) {
		return "That was the good answer\n"
	} else {
		let returnToTextWrong = "The answer for \(randKoWord) is \(dictionaryKoreanEnglish[randKoWord] ?? "Default value checkAnswerKoreanEnglish else")\n"
		return returnToTextWrong
	}
}

// For english choice
func checkAnswerEnglishToKorean(userInput: String, randEnWord: String) -> String {
	let dictionaryEnglishKorean = koToEnglish
	let dictionaryValue = dictionaryEnglishKorean[randEnWord]
	let ifUserInput: String = userInput
	//let dictionaryKey = randEnWord
	if(randEnWord == ifUserInput) {
		return "That was the good answer\n"
	} else {
		let returnTextWrong = "The answer for \(dictionaryValue ?? "Default value checkAnswerEnglishKorean()") is \(randEnWord)\n"
		return returnTextWrong
	}
}

func koreanChoice() {
	var inputWord = "inputWord declaration value koreanChoice"
	while(inputWord.isEmpty == false) {
		let choosedWord = chooseKoreanWordFromArray()
		print(choosedWord)
		inputWord = readLine() ?? "Default value inputWord korean choice"
		print(checkAnswerKoreanToEnglish(userInput: inputWord, randKoWord: choosedWord))
	}
}

func englishChoice() {
	var inputWord = "inputWord default value englishChoice"
	while(inputWord.isEmpty == false) {
		let choosedEnglishWord = chooseEnglishWordFromArray()
		inputWord = readLine() ?? "Default value inputWord english choice"
		print(checkAnswerEnglishToKorean(userInput: inputWord, randEnWord: choosedEnglishWord))
	}
}

func main() {
	print("For korean to english type: korean,\nfor english to korean type: english")
	let choice = readLine()!
	if(choice == "korean") {
		koreanChoice()
	} else if(choice == "english") {
		englishChoice()
	}
}

main()
print("안녕하세요, goodbye 👋\nTomas Daniel Nieto, 2019, Me™️")
