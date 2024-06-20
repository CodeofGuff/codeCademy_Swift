

// Arrays and Sets


// Stores and ordered collection of values / data
// ie. list of player scores, list of order prices in a food delivery app



// An Empty Array
// var name = [Type]() 
// Type cannot be changed after being declared and can only hold that type
var subwayAdult: [Int] = [Int]()
var subwayChild: [Int] = [Int]()
print(subwayAdult)
print(subwayChild)


// Array Literal 
// var name = [list of values]
var subwayAdult = [800, 1200, 1500]
print(subwayAdult)

var subwayChild: [Int] = [400, 600, 750]
print(subwayChild)


// Index
// How to retrieve an induvidual value from an array
// 0 indexed like Python
var vowels = ["a", "e", "i", "o", "u"]
print(vowels[0])


// Properties allow us to access a value that is specific to a particular structure. 
// .count used to give us a number value of elements inside an array
// .append() METHOD adds additional items or use var += [ITEM]
// .insert() METHOD var.insert("i", at: 0) to insert at the specific index
// .remove() METHOD var.remove(at: 3) to remove a certain index
var coinType = ["Shiney", "Dull", "Painted", "Half"]
print(coinType.count)

coinType.append("Gold")
print(coinType)
// OR
coinType += ["Blue", "Bitten"]
print(coinType)

coinType.insert("Sparkley", at: 0) 
coinType.remove(at: 2) // removes Dull 
print(coinType)



// Iterating over an array with a for-in loop
// for item in arrray {}

var cctips: [Int] = [113, 140, 212, 200]
var catips: [Int] = [25, 80, 15, 40]
var total = 0
for item: Int in cctips { 
    total += item
}
for item in catips {
    total += item
}
print(total)


// REVIEW 
// An array is a list of ordered items.
// var evenNumbers = [2, 4, 6, 8, 10]
// The first index in an array is 0.
// The .count property that returns the size of an array.
// Some of the methods that come with arrays:
// .append(): adding an item to the end
// .insert(): adding an item to an index
// .remove(): removing an item from an index
// The for-in loop can be used to iterate through an array.


// Finds Sum of Even nums and product of Odd nums
var list = [2, 4, 6, 1, 7, 9]
var evenSum = 0
var oddProd = 1 // must be 'multiplied by 1'
for item in list {
    if item % 2 == 0 {
        evenSum += item
    }
    else {
        oddProd *= item
    }
}
print("Sum of even numbers is \(evenSum)")
print("Product of odd numbers is \(oddProd)")