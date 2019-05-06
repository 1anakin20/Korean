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

// Func fact, 4 is a unlucky number in Korea becuase it sounds like death
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
