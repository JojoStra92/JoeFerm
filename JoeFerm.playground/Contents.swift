//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Jojo"



// Le prix du voyage aux caraibes de Joe
let price:Double = 1499

var born: [String: Int]
born = ["milk": 0, "wheat": 0, "wool": 0]

var money = 0.0
var indexOfday = 0


while money < price {

    // Joe nourrit ses vaches tous les jours
    money -= 4
    
    // on calcul la taille de la grange
    var barnSize = 0
    for (keys, goods) in born{
        barnSize += goods
    }
    if barnSize >= 500{
        // on vends !
        money += Double(born["milk"]!) * 0.50
        money += Double(born["wheat"]!) * 0.30
        money += Double(born["wool"]!) * 1
        
        // On vide la grange !
        born = ["milk": 0, "wheat": 0, "wool": 0]
    } else {
        
        if indexOfday % 30 == 1
        {
            // joe moisonne
            born["wheat"]! += 100
        }
        else if indexOfday % 30 == 10  || indexOfday % 30 == 20
        {
            // Joe tond les moutons
            born["wool"]! += 30
        }
        else
        {
            // Joe trait ses vaches
            born["milk"]! += 30
        }
    }
    
    indexOfday += 1
}
print("Il aura fllu \(indexOfday) jours a Joe pour économiser \(money)€")











