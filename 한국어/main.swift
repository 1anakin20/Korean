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
	] as [String : Any]

func chooseWordFromArray() -> String {
	let dictionaryKoreanEnglish = koToEnglish
	
	let randomVal = dictionaryKoreanEnglish.randomElement()
	let koWord = randomVal!.key
	return koWord
	
}

func checkAnswer(userInput: String, randKoWord: String) -> String {
	let dictionaryKoreanEnglish = koToEnglish
	let stringKoreanEnglish = dictionaryKoreanEnglish[randKoWord] as! String
	if(stringKoreanEnglish == userInput) {
		return "That was the good answer\n"
	} else {
		let returnToTextWrong = "The answer for \(randKoWord) is \(dictionaryKoreanEnglish[randKoWord] as! String)\n"
		return returnToTextWrong
	}
	
}

func main() {
	var inputWord = "foo"
	while(inputWord.isEmpty == false) {
		let choosedWord = chooseWordFromArray()
		print(choosedWord)
		inputWord = readLine()!
		print(checkAnswer(userInput: inputWord, randKoWord: choosedWord))
	}
}

main()
