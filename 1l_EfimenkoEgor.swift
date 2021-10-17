import Foundation


//1.Квадратное уравнение
let a: Float = 1
let b: Float = -2  
let c: Float = -3
var x1: Float
var x2: Float
var d: Float
var discriminant: Float
	d = b * b - (4 * a * c)
		if(d >= 0){
			discriminant = sqrt(d)
			x1 = (-b + discriminant) / (a * 2)
			x2 = (-b - discriminant) / (a * 2)
			print("X1 = " , x1 , "x2 = " , x2)
		} else{
			print("Корней нет")
		}

//2. Найти площадь, периметр и гипотенузу треугольника.
let a: Float = 4.5
let b: Float = 8.4
var P: Float = a + b + c
var S: Float = a * b / 2
var c: Float = sqrt(pow(a, 2) + pow(b, 2))
	print("Периметр равен ", P)
	print("Площадь равена ", S)
	print("Гипотенуза равена ", c)

//3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
var debit: Float = 100;
let persent: Float = 10;
let year: Float = 5
var tryCount: Float = 0
	var i: Float = debit / 100 * persent
	while tryCount != year{
		tryCount += 1
		debit += i;
		i = debit / 100 * persent;
		print("На ", Int(tryCount), " год ваш вклад будет равен ", debit)
	}