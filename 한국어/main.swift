//
//  main.swift
//  한국어
//	기유 시간
//
//  Created by Tomas Daniel Nieto on 2019-04-10.
//  Copyright © 2019 Tomas Daniel Nieto. All rights reserved.
//

import Foundation

let koToEnglish = ["우유": "milk",
				   "아이": "child",
				   "우의": "friendship",
				   "가유": "free",
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
	] as [String : String]

func chooseKoreanWordFromArray() -> String {
	let dictionaryKoreanEnglish = koToEnglish
	let randomVal = dictionaryKoreanEnglish.randomElement()
	let koWord = randomVal!.key
	return koWord
}

func chooseEnglishWordFromArray() -> String {
	let dictionaryEnglishKorean = koToEnglish
	let randomVal = dictionaryEnglishKorean.randomElement()
	let enWord = randomVal!.value
	return enWord
}

func checkAnswerKoreanToEnglish(userInput: String, randKoWord: String) -> String {
	let dictionaryKoreanEnglish = koToEnglish
	let stringKoreanEnglish = dictionaryKoreanEnglish[randKoWord] ?? "Default value"
	if(stringKoreanEnglish == userInput) {
		return "That was the good answer\n"
	} else {
		let returnToTextWrong = "The answer for \(randKoWord) is \(dictionaryKoreanEnglish[randKoWord] ?? "Default value")\n"
		return returnToTextWrong
	}
}

func checkAnswerEnglishToKorean(userInput: String, randEnWord: String) -> String {
	let dictionaryEnglishKorean = koToEnglish
	let stringEnglishKorean = dictionaryEnglishKorean[randEnWord]
	if(stringEnglishKorean == userInput) {
		return "That was the good answer\n"
	} else {
		let returnTextWrong = "The answer for \(randEnWord) is \(dictionaryEnglishKorean[randEnWord] ?? "foo")\n"
		return returnTextWrong
	}
}

func main() {
	var inputWord = "foo"
	print("For korean to english type: korean,\nfor english to korean type: english")
	let choice = readLine()
	if(choice == "korean") {
		while(inputWord.isEmpty == false) {
			let choosedWord = chooseKoreanWordFromArray()
			print(choosedWord)
			inputWord = readLine() ?? "Nil = inputWord (korean)"
			print(checkAnswerKoreanToEnglish(userInput: inputWord, randKoWord: choosedWord))
		}
	} else if(choice == "english") {
		while(inputWord.isEmpty == false) {
			let choosedWord = chooseEnglishWordFromArray()
			print(choosedWord)
			inputWord = readLine() ?? "nil = inputWord (english)"
			print(checkAnswerEnglishToKorean(userInput: inputWord, randEnWord: choosedWord))
		}
	}
}

main()
print("안녕하세요, goodbye 👋\nTomas Daniel Nieto, 2019, Me™️")
