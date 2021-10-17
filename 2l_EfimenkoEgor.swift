import Foundation

// 1
func evenOrNot(_ number: Int) {
	if number % 2 == 0 {
	print("Четное")
	} else {
	print("Нечетное")
	}
}
// 2
func divideTree(_ number: Int) {
if number % 3 == 0 {
	print("Делится на 3")
	} else {
	print("Не делится на 3")
	}
}

// Объединил для себя
func divider(_ number: Int, _ divider: Int) {
	if number % divider == 0 {
	print("Делится")
	} else {
	print("Не делится")
	}
}

// 3
var massive: [Int] = []
var score: Int = 0
	while score != 100 {
		score += 1
		massive.append(score)
	}

//4
var clear = massive.filter{$0 % 2 != 0 && $0 % 3 == 0}

//5
func fibonachi(_ howManyNumberNeed: Int) -> [Int] {
var massive: [Int] = [0, 1] //фибоначи начинается всегда с 0 и 1
var score: Int = 0
var number: Int = massive.endIndex
	while howManyNumberNeed != massive.count{
		number = number + massive[score]
        massive.append(number)
		score += 1
	}
return massive
}
print(fibonachi(50))

//6
func homeWorkSix(_ n: Int) -> [Int] {
var massiveSimple = [Int] (2...n) 
var massiveResult: [Int] = []
 while let P = massiveSimple.first {
    massiveResult.append(P)
    massiveSimple = massiveSimple.filter{$0 % P != 0}
 }
return massiveResult
}
print (homeWorkSix(100))