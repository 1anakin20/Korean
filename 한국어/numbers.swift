//
//  numbers.swift
//
// This is for sino-Korean numbers
//  한국어
//
//  Created by Tomas Daniel Nieto on 2019-05-06.
//  Copyright © 2019 Tomas Daniel Nieto. All rights reserved.
//

import Foundation

// Fun fact, 4 is a unlucky number in Korea becuase it sounds like death
// Grammar lesson, 6 can also be 륙
let koNumbers = [1: "일",
				 2: "이",
				 3: "삼",
				 4: "사",
				 5: "오",
				 6: "육",
				 7: "칠",
				 8: "필",
				 9: "구",
				 10: "십",
				 100: "백",
				 1000: "천",
	] as [Int : String]

func randomNumber() -> Int {
	let randomNum = Int.random(in: 1...2000)
	return randomNum
}

func checkNumber100or1000or10() -> String {
	let randomNum = randomNumber()
	if(1...10 ~= randomNum || randomNum == 1000 || randomNum == 100) {
		let stringKoNumbersValue = String(koNumbers[randomNum]!)
		return stringKoNumbersValue
	} else if(10..<100 ~= randomNum) {
		return highNumbers10(randomNum: randomNum)
	}
	return "CheckNumber100or10 final return" //Temporal return until else-if return added
}

func highNumbers10(randomNum: Int) -> String {
	// This function will compose the Sino-Korean 11 to 99 numbers gramatically
	let decomposedRandomNum = indivualDigits(randomNum: randomNum)
	let firstNumber = String(koNumbers[decomposedRandomNum[1]] ?? "Default value of firstNumber, highNumbers10(randomNum: Int)")
	let secondNumber = String(koNumbers[decomposedRandomNum[2]] ?? "Default value of secondNumber, highNumbers10(randomNum: Int)")
	// String concontaction to add the 십 in the middle
	let concontedString = firstNumber + "십" + secondNumber
	return concontedString
}

func indivualDigits(randomNum: Int) -> Array<Int> {
	//This function will decompose every number into digits and put them into an Int array
	let strRandomNum = String(randomNum)
	let digitsRandomNum = strRandomNum.compactMap{ $0.wholeNumberValue }
	return digitsRandomNum
}

func checkAnswerKoreanToEnglishNumbers() {
	// Check if Korean match English number
}

func checkAnswerEnglishToKoreanNumbers() {
	// Check if English matchs Korean number
}
