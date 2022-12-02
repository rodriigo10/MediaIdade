import UIKit

var arrayAge = [13, 32, 30, 29, 18, 51, 40, 79, 17]
var categorie1:[Int] = []
var categorie2:[Int] = []
var categorie3:[Int] = []

func categories(arr:[Int]) {
    
    for age1Array in arr {
        guard age1Array < 18 else {
            continue
        }
        categorie1.append(age1Array)
    }
    
    for age2Array in arr {
        guard age2Array >= 18 && age2Array <= 40 else {
            continue
        }
        categorie2.append(age2Array)
    }
    
    for age2Array in arr {
        guard age2Array > 41 else {
            continue
        }
        categorie3.append(age2Array)
    }
    
    var newResult1 = categorie1.reduce(0,+)/categorie1.count
    var newResult2 = categorie2.reduce(0,+)/categorie2.count
    var newResult3 = categorie3.reduce(0,+)/categorie3.count
    var newResult4 = arr.reduce(0,+)/arr.count
    
    print("Para a categoria abaixo de 18 anos a média é: \(newResult1) anos")
    print("Para a categoria acima de 18 até 40 anos a média é: \(newResult2) anos")
    print("Para a categoria acima de 40 anos a média é: \(newResult3) anos")
    print("Para a categoria todas as idades a média é: \(newResult4) anos")
}

categories(arr: arrayAge)

