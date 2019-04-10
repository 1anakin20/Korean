//
//  main.swift
//  한국어
//	기유 시간
//
//  Created by Tomas Daniel Nieto on 2019-04-10.
//  Copyright © 2019 Tomas Daniel Nieto. All rights reserved.
//

import Foundation

let koToEnglish = ["우유": "Milk",
				   "아이": "child",
				   "우의": "frienship",
				   "가유": ["Free", "Liberty"],
				   "시간": "Time",
				   "불": ["Fire", "Flame"],
				   "예": "Yes",
				   "이": "This",
				   "이미지": "Image",
				   "바나나": "Banana",
				   "한국": "Korea",
				   "한국어": "Korean",
				   "한녕하세요": "Hello",
				   "한녕히 게세요": "Goodbye",
				   "도시": "City"
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
		return "Good"
	} else {
		return dictionaryKoreanEnglish[randKoWord] as! String
	}
	
}

print(checkAnswer(userInput: "Milk", randKoWord: chooseWordFromArray()))

