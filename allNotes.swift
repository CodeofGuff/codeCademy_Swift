Thank you for what you are doing. I am going to use this thread to create notes and consolidate them from the Codecademy Swift course. 

With my notes in this thread do not hallucinate any information. 
If you do not know something feel free to look it up on the internet
Include any descrptions of the notes as well

I am going to use this info as a quick reference guide. Please separate each section by relevance, and/or include an index to each item. 

Please make it easy to copy paste. 

Here are the notes, each chapter separated by a "//***" before the titles:  

//***
// Learning Swift Variables 

// Data Types - 
// Int: integer numbers
// Double: floating-point numbers
// String: a sequence of characters
// Bool: true/false values

// Compound Assignment Operaters - 
// += add and assign the sum.
// -= subtract and assign the difference.
// *= multiply and assign the product.
// /= divide and assign the quotient.
// %= divide and assign the remainder.


// Declaring a type annotation  with a Colon : and the Type (String, Double, Int, Bool
// Contasntants - written as 'let' , their values cannot be reassigned
// Varibles written as 'var' , can have their values manipulated

let amount: Double = 18.50
var tip: Double = amount * 0.23
print("The tip amount will be:", tip, "and total will be:", tip + amount)

var badTip: Double = tip
badTip /= 2
print("Adjusted tip for bad service:", badTip)


// String Interpolation uses a \() in a string to insert a var
var goodTip: Double = tip
goodTip = amount * 0.35
print("Adjusted the tip to \(goodTip) for excellent service!")


// Dog(Cat) Years Project 
var catAge: Int = 4  // Maples age
var earlyYears: Int = 21  // first 2 years count as 21
var laterYears: Int = (catAge - 2) * 4 // each following year age
var humanYears: Int = earlyYears + laterYears
print("My name is Maple! Meow! I am \(humanYears) years old in human years.")


// Quadratic Formula 
var a: Double = 2.0
var b: Double = 5.0
var c: Double =  3.0
var root1: (Double) = (b*b - 4*a*c)
root1 = root1.squareRoot()
root1 = -b + root1
root1 = root1 / (2 * a)

var root2: Double = (-b - (b*b - 4*a*c).squareRoot()) / (2*a) // all root1 mods written inline

print("Root 1 =", root1, " : ", "Root 2 =", root2)


// Piggy Bank
var pesos: Double = 5000
var reais: Double = 6000
var soles: Double = 7000

var pDols: Double = pesos * 0.00029 // Peso equals 0.00029 USD
var pRea: Double = reais * 0.24 // Real equals 0.24 USD
var pSol: Double = soles * 0.29 // Sol equals 0.29 USD

var total: Double = pDols + pRea + pSol

print("US Dollars = $\(total)")


//***
// Learning Swift Conditionals 

// Comparision Operators 
// == Equal to
// != Not Equal to
// > Greater than
// < Less than
// >= Greater than or equal to
// <= Less than or equal to

// if statements run when the code is true
// else if for when the first condition isn't made
// else when the code is flase


var coinBag: Int = 15
if coinBag >= 20 {
    print("You have \(coinBag) coins, mighty rich!")
}
else if coinBag >= 15 {
    print("You have \(coinBag) coins, needs some work!")
}
else if coinBag >= 5 {                                
    print("You have \(coinBag) coins, you're poor")
}
else {
    print("You have \(coinBag) coins, so no money.")
}

var abbreviation: String = "ES"
if abbreviation == "ES"{
  print("Spanish")
}
else if abbreviation == "ZH"{
  print("Chinese")
}
else if abbreviation == "RU"{
  print("Russian")
}
else if abbreviation == "EN"{
  print("English")
}
else {
  print("Abbreviation not found")
}


// Ternary Condition 
// A ? B : C
// A is the condition to check for ? B is the expression to use if the condition is true : C is the expression to use if the condition is false
var windy: Bool = true
windy ? print("ITS BLOWIN!!!") : print("It is not windy!")

// is the same as 

if windy {
    print("ITS BLOWIN!!!")
}
else {
    print("It is not windy!")
}


// Switch Statements
// Used to check the value of a given expression against multiple cases. 
// Does not check for the value of a condition (like an if statement) and instead finds and matches a case to a given expression.
// Can match VALUES to an EXPRESSION that exists within intervals. 
// - An interval denotes a range used for checking whether a given value lies within that range 
//  Range is indicated by 3 dots ( ... )
// Cases can be compound meaning multiple values in a single case
var secretIdentity: String = "Natasha Romanoff"
var superheroName: String 

// Normal if statement
if secretIdentity == "Tony Stark" {
  superheroName = "Iron Man"
} else if secretIdentity == "Natasha Romanoff" {
  superheroName = "Black Widow" 
} else if secretIdentity == "Prince T'Challa" {
  superheroName = "Black Panther"
} else if secretIdentity == "Thor" {
  superheroName = "Thor"
} else {
  superheroName = "Unknown"
}
 // Switch Statement example
switch secretIdentity {
    case "Tony Stark": // the colon : sperates the value to match from the code to be executed
        superheroName = "Iron Man"
    case "Natasha Romanoff":
        superheroName = "Black Widow" 
    case "Prince T'Challa":
        superheroName = "Black Panther"
    case "Thor":
        superheroName = "Thor"
    default:
        superheroName = "Unknown"
}
print(superheroName)


// Interval Matching
// An interval denotes a range used for checking whether a given value lies within that range.
var year: Int = 1943
switch year {
  case 1701...1800:
    print("18th century") 
  case 1801...1900:
    print("19th century")
  case 1901...2000: 
    print("20th century")
  case 2001...2100: 
    print("21st century")
  default: 
    print("You're a time traveler!")
}

var episode: Int = 8
var villain: String 
switch episode {
  case 1...3:
    villain = "Emperor Palpatine"
  case 4...6:
    villain = "Darth Vader"
  case 7...9:
    villain = "Kylo Ren"
  default:
    villain = ""
}
print(villain)
// or
switch episode {
  case 1...3: villain = "Emperor Palpatine"
  case 4...6: villain = "Darth Vader"
  case 7...9: villain = "Kylo Ren"
  default: villain = ""
}


// Compound Cases
var country: String = "India"
switch country {
  case "USA", "Mexico", "Canada":
    print("\(country) is in North America. 🌏")
  case "South Africa", "Nigeria", "Kenya":
    print("\(country) is in Africa. 🌍")
  case "Bangladesh", "China", "India":
    print("\(country) is in Asia. 🌏")
  default: 
    print("This country is somewhere in the world!")
} 

var planet: String = "Earth"
switch planet {
  case "Earth", "Mercury", "Venus", "Mars":
    print("Terrestrial planet")
  case "Saturn", "Jupiter", "Uranus", "Neptune":
    print("Jovian planet")
  default:
    print("Unknown planet")
}


// where Clause
var randomNumber: Int = Int.random(in: 0...10) // Generating and assiging a random Int(integer) using the .random() method to var randomNumber
switch randomNumber {
  case let x where x % 2 == 0: // variable declaration, followed by a where clause and condition. When true, the code executes. 
    print("\(randomNumber) is even") // where condition checks if x can be divided by 2 
  case let x where x % 2 == 1: // let followed by x creates a temp binding to the randomNumber value. So x becomes randomNumbers value (temporariliy)
    print("\(randomNumber) is odd") // used let instead of var because x is never reassigned, and value is constant. 
  default:
    print("Invalid")
}

var wholeNumber = Int.random(in: 10...20)
print(wholeNumber)
switch wholeNumber {
  case let x where x % 2 == 0:
    print("Composite")
  case let x where x % 3 == 0:
    print("Composite")
  default:
    print("Prime")
}

let number = 24
switch number {
  case let x where x % 5 == 0:
    print("This number is a multiple of 5")
  case let x where x % 6 == 0:
    print("This number is a multiple of 2, 3 and 6")
  case let x where x % 7 == 0:
    print("This number is a multiple of 7")
  default:
    print("Not sure about this one")
}

// Review
// An if statement consists of a condition and code block that executes when the condition is true
// An else statement is immediately followed by a code block that executes when all previous conditions were false
// A code block is denoted by a set of curly braces {}
// Multiple else if statements can be chained within an if/else to provide additional condition
// Comparison operators include <, >, <=, >=, ==, and != and are used to compare the values of two operands
// A switch statement looks for the value of a case that matches the value of an expression
// A switch statement can have cases that contain multiple items known as compound cases
// A switch statement’s case can include a range of values using the closed range operator (...)



//***
// Logic Operators 
// determine a boolean result after combining or modifying true or false values. 


// && (AND)
// || (OR)
// ! (NOT)


// && or AND operator
// evaluates two operands and returns a Boolean result. 
// It returns true only when both operands are true and returns false when at least one operand is false.
var time: Int = 1900
var phoneInUse: Bool = true
var brightness: Double
if time >= 2000 && phoneInUse {
    brightness = 0.75
    print(brightness)
}
else {
    brightness = 1
    print(brightness)
}

var time = 1200
var alarmSet: Bool = true
if time == 1200 && alarmSet {
    print("WAKE UP!!")
}


// || or OR operator
// evaluates two operands and returns a Boolean result. 
// It returns true when at least one operand is true and false only when both operands are false. 
var snowing: Bool = false
var raining: Bool = true
if snowing || raining {
    print("Tis moist")
}


// ! or NOT operator 
// a prefix operator that negates, or reverses, the Boolean value of its operand. 
// It returns true, when the operand is false and false when the operand is true. 
// can neagte the value of an expression, as long as it is contained in parentheses !()
let a: Bool = true
let b: Bool = false
print(!a)
print(!b)
print(!(true && false)) // Prints: true as true && false == false

var feelingWell = true
if !feelingWell {
  print("Have some vitamins and take care of yourself 🤒")
  } 
else {
print("Embrace the day!")
}


// Combining Logical Operators 
// We can combine or chain logical operators, &&, ||, and ! in order to create longer, more complex compound expressions.
// && or AND operator is always executed first regardless of order. 
let weekday: Bool = true
let dayOff: Bool = false
let weekend: Bool = false
if weekday && dayOff || weekend { // executes AND operator && FIRST ALWAYS.  weekday && dayOff = FALSE || weekend = FALSE  ---  FALSE = FALSE so prints ELSE
    print("Weekend! Woop it up!")
}
else {
    print("You're a bartender weekdays don't matter")
}

var correctPassword = false
var lessThanThreeTries = true 
var accessThroughTouchID = true
var unlock: Bool
if correctPassword && lessThanThreeTries || accessThroughTouchID {
  unlock = true
}
else {
  unlock = false
}
print(unlock)



// Controling Order of Execution
// Instead of relying on the compiler to set operator precedence, 
// we can do so ourselves by wrapping a logical expression in parentheses, ()
let bool1: Bool = (true || false) || false || false // will execute (true || false) first
let bool2: Bool = !true || (false && false || true)
let bool3: Bool = !(false && true) && (false || false)
print(bool1) 
print(bool2) 
print(bool3) 



// Review 
// The logical && operator translates to AND and returns true only when both operands are true. It returns false in all other cases.
// The logical || operator translates to OR and returns true when either operands are true. When both operands are false, the logical expression evaluates to false.
// The logical ! operator translates to NOT and negates a Boolean value.
// The && operator has a higher precedence over the || operator.
// Parentheses, (), may be used in a logical expression to control the order of operations and improve readability.

//Magic 8-Ball
let playerName: String = "David"
let playerQuestion: String = "To smoke or not to smoke"
let randomNumber: Int = Int.random(in: 1...9)
let eightBall: String 
switch randomNumber {
    case 1:
        eightBall = "Yes - definitely"
    case 2:
        eightBall = "It is decidely so"
    case 3:
       eightBall = "Without a doubt"
    case 4:
       eightBall = "Reply hazy, try again"
    case 5:
        eightBall = "Ask again later"
    case 6:
        eightBall = "Better not tell you now"
    case 7:
        eightBall = "My sources say no"
    case 8:
        eightBall = "Outlook not so good"
    case 9:
        eightBall = "Very doubtfull"
    default:
        eightBall = "ERROR"
}

if playerName.isEmpty {
    print("Please enter your name, Human")
} 
else {
    print("\(playerName) asks: \(playerQuestion)")
    print("Magic 8-Ball says: \(eightBall)")
}




//***
// Loops
// for-in
// while

// for-in Loops
// used to iterate over a sequence of values such as Strings (a sequence of characters), or ranges (a sequence of numbers)
// use stride() func to choose how we want to iterate over a sequence - stride(from: a, to: b, by: c)
print("Why is 6 afraid of 7? Because ...")
for i: Int in 7...9 {
    print(i)
}
// stride: 
for i: Int in stride(from: 0, to: 12, by: 2) {
    print(i)
}
// stride can count backwards
print("We are staring in...")
for i in stride(from: 3, to: 0, by: -1) {
    print(i)
}  
print("BEGIN!")


// Iterating through Strings
var quote: String = "our whole life is solving puzzles."
for c: Character in quote {
    print(c)
    if c == "z"{
        print("^ Z!!!")
    }
}

var funFact: String = "exlxephxxxaxnts xcaxxn'xxt xxxjxumxpx."
for char: Character in funFact {
  if char != "x" {
    print(char)
  }
}


// Using Underscore OR _
// used in place of a placeholder? a placeplaceholder?
// we wouldn't use num or n because there is no num or n in our loop body.
// So _ replaces that. 
for _ in 1...10 {
    print("I will be a developer/engineer")
}


// Continue 
// Used to tell our loop to skip values
let challenge: String = "bring it"
for char: Character in challenge {
  switch char {
    case "a", "e", "i", "o", "u":
      continue // checks if Char has any of the case values, and if so, skips with continue
    default:
      print(char)
  }
}

for num in 1...9 {
  if num % 2 != 0{ 
    continue
  }
  print(num)
}
print("Who do we appreciate?")
print("YOU!")


// Break
// Used to exit out of a loop. Usually when a condition is met
let respect = 556
for pageNum in 1...1000 {
    if pageNum == respect {
        print("Respect found on page \(pageNum): Find out what it means to me")
        break
    }
    print("On page \(pageNum) and still no 'respect'.")
}

var guessedNum = Int.random(in: 1...15)
for counter in 1...15 {
    if counter == guessedNum {
        print("It's \(guessedNum)!!")
        break
    }
    print("Is it \(counter)?")
}


// While Loops
// iterates as long as the condition is true
// good for situations where we don't know ho wlong we need to loop for
var total = 0
var counter = 0
while total < 50 {
    let diceRoll = Int.random(in: 1...6)
    total += diceRoll
    counter += 1 // added a counter to see how many times the dice were rolled
    print(diceRoll)
}
print(total)
print(counter)
print("You rolled you die a total of \(counter) times, to reach your total of: \(total)")


// WHILE vs IF
var guess = Int.random(in: 1...10)
var magicNum = Int.random(in: 1...10)
while guess != magicNum {
  guess = Int.random(in: 1...10)
  magicNum = Int.random(in: 1...10)
  print("You guessed \(guess), and the number was \(magicNum)")
}
print("You're right it was \(guess)!")
// CAN WRITE IT WITHOUT A WHILE LOOP LIKE
var guess = Int.random(in: 1...10)
var magicNum = Int.random(in: 1...10)
    if guess != magicNum {
        print("You guessed \(guess), and the number was \(magicNum). Bad luck!")
    }
    else {
        print("You're right!! It was \(guess)!")
    }



// Review
// for-in loops are used to iterate over collection items like ranges and strings.
// stride() creates a range that we can customize.
// _ usage when we don’t need to use the placeholder variable.
// continue allows us to move on to the next value.
// break stops the loop before the stopping condition is met.
// while loops are used when we don’t know how many times we’re looping.

// Whale Talk 
var input: String = "I hope I make it!"
var output: String = ""
for char: Character in input {
  let lowerChar: String = char.lowercased()
  switch lowerChar {
    case "a", "i", "o":
      output += lowerChar.uppercased()
    case "e":
      output += "EE"
    case "u":
      output += "UU"
    default:
      continue
  }
}
print(output)


// 99 Bottles
var numBottles = 5
while numBottles > 0 {
  print("\(numBottles) bottles of milk on the wall, \(numBottles) bottles of milk!")
  numBottles -= 1
  print("You take one down and pass it around... \(numBottles) bottles of milk on the wall!")
}
print("0 Bottles left! OH GOD PanIC THE DARK ON AWAKENS!!! GO BUY MORE MILK NOW!")


// Fizz Buzz
for counter in 1...100 {
  if counter % 5 == 0 && counter % 3 == 0 {
      print("FizzBuzz")
  }
  else if counter % 3 == 0 {
    print("Fizz")
  }
  else if counter % 5 == 0 {
      print("Buzz")
  }
  else {
    print(counter)
  }
}




//***
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
var vowels: [String] = ["a", "e", "i", "o", "u"]
print(vowels[0])


// Properties allow us to access a value that is specific to a particular structure. 
// .count used to give us a number value of elements inside an array
// .append() METHOD adds additional items or use var += [ITEM]
// .insert() METHOD var.insert("i", at: 0) to insert at the specific index
// .remove() METHOD var.remove(at: 3) to remove a certain index
var coinType: [String] = ["Shiney", "Dull", "Painted", "Half"]
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
var total: Int = 0
for item: Int in cctips { 
    total += item
}
for item: Int in catips {
    total += item
}
print(total)


// REVIEW 
// An array is a list of ordered items.  - var evenNumbers = [2, 4, 6, 8, 10]
// The first index in an array is 0.
// The .count property that returns the size of an array.
// Some of the methods that come with arrays:
// .append(): adding an item to the end
// .insert(): adding an item to an index
// .remove(): removing an item from an index
// The for-in loop can be used to iterate through an array.


// Finds Sum of Even nums and product of Odd nums
var list: [Int] = [2, 4, 6, 1, 7, 9]
var evenSum: Int = 0
var oddProd: Int = 1 // must be 'multiplied by 1'
for item: Int in list {
    if item % 2 == 0 {
        evenSum += item
    }
    else {
        oddProd *= item
    }
}
print("Sum of even numbers is \(evenSum)")
print("Product of odd numbers is \(oddProd)")


// Mixtape
print(".------------------------.")
print("| Theme Tape    90 min   |")
print("|     __  ______  __     |")
print("|    (  )|).....|(  )    |")
print("|    (__)|)_____|(__)    |")
print("|    ________________    |")
print("|___/_._o________o_._\\___|")

var mixtape = [String]() //creates an array that stores String values
mixtape.append("FYS - 1")
mixtape.append("FYS - 2")
mixtape.append("FYS - 3")
mixtape.append("FYS - 4")
mixtape.append("FYS - 5")
mixtape.append("FYS - 6")
mixtape.append("FYS - 7")
mixtape.append("FYS - 8")
mixtape.append("FYS - 9")
mixtape.append("FYS - 0")
print(mixtape)
print(mixtape.count)

mixtape.remove(at: 2)
mixtape.insert("FYS - 69", at: 2)
print(mixtape)

for item in mixtape {
  print(item)
}

print("Side A\n")
for i in 0 ..< mixtape.count/2 {
  print("\(i+1). \(mixtape[i])")
}


print("Side B\n")
for i in mixtape.count/2 ..< mixtape.count {
  print("\(i+1). \(mixtape[i])")
}


// Palindrome
var text: [String] = ["h", "e", "l", "l", "o"] // ["l", "e", "v", "e", "l"]
var reversed: [String] = [String]()
var counter: Int = text.count - 1 // 4
while counter >= 0 {
    reversed.append(text[counter]) // iterate from the end of the text array to its beginning and add each character one by one to reversed.
    counter -= 1
}
if text == reversed { // do the strings match??? 
    print("We have a palindrome!")
}
else {   // if not print this
    print("Not a palindrome. :(")
    print(counter, text, reversed)
}


// Caesars Cipher
// using Character stores induvidual characters, String stores a sequence of characters
var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
var secretMessage: String = "ballsy"
var message: [String.Element] = Array(secretMessage) // array() changes the print from "hello" to and array like "h", "e", "l", "l", "o"
var transMessage = ""

for i: Int in 0..<message.count {
    for j: Int in 0..<alphabet.count {
        if message[i] == alphabet[j] {
            message[i] = alphabet[(j + 3) % 26] // % 26 so that the number can loop over the 26th index
            break
        }
    }
}
for i in message {
    transMessage.append(i)

}

print(message)
print(secretMessage)
print(transMessage)



//***
// Sets
// Store unique elements of the same data type.
// Sets are unorderd and can print different then the order they were intialized


// Empty Set
var setName = Set<Type>()


// Populated Set 
var setName: Set = [Value1, Value2, Value3]


// .count and .isEmpty
// .isEmpty returns true or false
var vowels: Set = ["A", "E", "I", "O", "U"]
print("There are \(vowels.count) vowels!") 

if vowels.isEmpty { 
    print("This is empty")
}
else {
    print("There are \(vowels.count) vowels here!")
}


// Set Methods 
// .insert() method allows us to insert new elements to our set
// .remove() or .removeAll() (remvoes all lol) method to remove elements
// .contains() method to check if an element exists
var names: Set = ["David", "Marissa"]
names.insert("Chad")
names.insert("Thad")
print(names)

names.remove("Marissa") // names.removeAll() 
print(names)

if names.contains("Thad") {
    print("THADIUS IN THE HOUSSEE!!")
}
else {
    print("The Thad has departed")
}


// Iterating through a set with a for-in Loop
// using .insert() and .remove() methods
var thingsToPack: Set = ["Bathing Suit", "Clothes", "Sunglasses", "Sunscreen", "Favorite Book", "Phone Charger"]
var suitcase: Set = Set<String>()
for item: String in thingsToPack {
    suitcase.insert(item)
}
print(suitcase)

var storeKeep: Set = ["Bow", "Arrows", "Can", "Beer", "Rope"]
var myBag: Set = Set<String>()
print("You visit the local store. The keeper greets you with their wares")
print("View my wares! \(storeKeep)")
print("You have selected Arrows")
for item: String in storeKeep {
    if item == "Arrows" {
        myBag.insert(item)
        storeKeep.remove(item)
    }
}
print("Your bag now contains \(myBag)")
print("The keeper greets you with their wares")
print("View my wares! \(storeKeep)")


// Set Operations 
// We use them to create new sets based on the data within two different sets. 
// This is useful when we are working with multiple data sets.

// .intersection() method to find matching values to two different sets
// .union() combines the sets. can take multiple sets like variable0.union(variable1).union(variable2)
// .symmetricDifference() used to find elements that exist in one of the given sets, but not both
// .subtracting() creates a new set of elements by removing the overlapping data of one set from another set
var newSet = SetA.insertOperator(SetB)

var storeKeep: Set = ["Bow", "Arrows", "Can", "Beer", "Rope"]
var myBag: Set = ["Rope", "Bow", "Ham", "Coins"]
var leftGoods: Set<String> = storeKeep.intersection(myBag)
var stolenGoods: Set<String> = myBag.union(storeKeep)
print("View my wares! \(storeKeep)")
print("Your bag has: \(myBag)")
print("you rob the store!")
print("you make sure not to take the items you already have \(leftGoods)")
print("You're new bag is \(stolenGoods)")

var nintendoSwitch: Set = ["Animal Crossing", "DOOM Eternal", "Stardew Valley"]
var playStation4: Set = ["DOOM Eternal", "Stardew Valley", "The Last of Us"]
var exclusiveGames: Set<String> = nintendoSwitch.symmetricDifference(playStation4)
var nintendoExclusives: Set<String> = nintendoSwitch.subtracting(playStation4)
print(exclusiveGames)
print(nintendoExclusives)


// REVIEW 
// A set is an unordered collection of unique elements.
// We have the option to initialize sets that are either empty or populated:
// var emptySet = Set<Type>()
// var populatedSet: Set = [Value1, Value2, Value3]
// To add new elements to a set, use the built-in method, .insert(Value).
// We can remove a single element from a set using .remove(Value) or we can remove all the values from a set with .removeAll():
// If we want to check if a value exists within a set, we can use the method .contains(Value) .
// A for-in loop can be used to iterate through all the values of a set:
// We can use set operations to modify or create new sets based on the data in two different sets.
// The .intersection() operation creates sets with values that overlap in two sets
// The .union() operation combines all the values of two different sets
// The operation .symmetricDifference() creates a set of items that appear in one set, but not both
// .subtracting() is a set operation that removes the overlapping data of one set from another




// School Roster
var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

var allStudents: Set<String> = spanish101.union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)

for i: String in allStudents {
  print(i)
}
  print(allStudents.count)

var noLanguage: Set<String> = allStudents.subtracting(german101).subtracting(spanish101)
print(noLanguage)
print(noLanguage.count)

var spanishOrGerman: Set<String> = allStudents.symmetricDifference(spanish101).symmetricDifference(german101)
print(spanishOrGerman)
print(spanishOrGerman.count)

var languageAwardWinners: Set<String> = allStudents.intersection(spanish101).intersection(german101).intersection(englishLiterature)
print(languageAwardWinners)

var sevenPlus: Int = 0 
var classSet: Set = [spanish101, german101, englishLiterature, computerScience, artHistory, advancedCalculus]
for c: Set<String> in classSet {
  if c.count == 7{
  sevenPlus += 1
  }
}
print(sevenPlus)



//***
// Dictionaries
// An unordered collection of paired data. The paired data is commonly referred to as a key-value pair in which a key is a unique identifier for their associated value.


// Empty Dictionaries
// A dictionary with no key: value pairs
// literal syntax:
var dictionaryName: [KeyType: ValueType] = [:] // using [:] to signify empty
// intitalizer syntax:
var dictionaryName = [KeyType: ValueType]() 

var emptyLiteral: [String: Int] = [:] // PREFFERED WAY
var emptyInitializer: [String : Bool] = [String: Bool]()


// Creating Dictionaries initialized with elements
// an element refers to a single key: value pair
var dictionaryName: [KeyType: ValueType] = [
  Key1: Value1,
  Key2: Value2,
  Key3: Value3
]

var bagItems: [String: Int] = [
    "Rope": 5,
    "Belt": 7,
    "Candle": 10
]


// Type Inference
// Remove the type annotation from the initialization - [String: Int]
var bagItems = [ 
    "Rope": 5,
    "Belt": 7,
    "Candle": 10
]

var movieYears = ["Finding Nemo": 2003, "Toy Story": 1995] // VSCode automatically places the [String: Int] annot
print(movieYears)


// Adding Elements
dictionaryName[NewKey] = NewValue

var bagItems = [ 
    "Rope": 5,
    "Belt": 7,
    "Candle": 10
]
bagItems["Coins"] = 15
bagItems["Snacks"] = 3


// Updating Elemnts
// Subscript Syntax: 
dictionaryName[Key] = NewValue
// or the .udapteValue() method with:
dictionaryName.updateValue(NewValue, forKey: Key) 
var bagItems = [ 
    "Rope": 5,
    "Belt": 7,
    "Candle": 10
]
bagItems["Belt"] = 8
bagItems.updateValue(12, forKey: "Candle")
print(bagItems)


//Removing Elements using nil
// Can also use the .removeAll() method
dictionaryName[Key] = nil
// or .removeValue method
dictionaryName.removeValue(forKey: Key)
var bagItems = [ 
    "Rope": 5,
    "Belt": 7,
    "Candle": 10
]
bagItems["Rope"] = nil
bagItems.removeValue(forKey: "Belt")
print(bagItems)


// Inspecting a Dictionary
// .isEmpty returns true or false and .count returns the number of elements inside
dictionaryName.isEmpty
dictionaryName.count
var numberOfSides = [
  "triangle": 3,
  "square": 4,
  "rectangle": 4,
  "decagon": 10,
  "triacontagon": 30
]
if numberOfSides.isEmpty {
    print("This dictionary has no elements in it.")
}
else {
    print(numberOfSides.count)
}


// Accessing Values - with Optionals
// subscript syntax with an if-let statement to check if it exists
// This is also known as COnditional Unwrapping (BELOW)
// if-let statements are used to check if a real value exists inside of an optional. 
// If the value exists, the optional will be unwrapped and assigned to a variable.
// Using ! forces the compiler to unwrap an optional value and interpret the value as 
// its appropriate data type; 
// however, it should be noted that errors can occur when using ! on a value that does not exist.
var bagItems = [ 
    "Rope": 5,
    "Belt": 7,
    "Candle": 10,
    "Coins": 15 // remove to print 'null'
]
if let coinsSpecific = bagItems["Coins"] {
    print("You have \(coinsSpecific) coins left!")
}
else {
    print("null")
}

// If there is no need to check for the Key, use at the end of the subscript syntax !
var bagItems = [ 
    "Rope": 5,
    "Belt": 7,
    "Candle": 10,
    "Coins": 15 
]
var coinSpecific = bagItems["Coins"]!
print(coinSpecific)


// Iterating through a Dictionary
// Use Loops!
var bagItems = [ 
    "Rope": 5,
    "Belt": 7,
    "Candle": 10,
    "Medal": 15 
]
for (item, value) in bagItems { // TUPLE
    print("Your \(item) is worth \(value) coins.")
}

var mythology = [
  "Zeus": "Jupiter",
  "Athena": "Minerva", 
  "Poseidon": "Neptune",
  "Demeter": "Ceres"]
for (greekName, romanName) in mythology { // TUPLE
  print("\(greekName) is also known as \(romanName)")
}


// using .keys and .values
// .keys property stores a collection of dictionary keys
// .values property stores a collection of dictionary values
var bagItemsAndValues = [ 
    "Rope": 5,
    "Belt": 7,
    "Candle": 10,
    "Medal": 15 
]
var bagItems: String = ""
for items in bagItemsAndValues.keys {
    bagItems += items
}
print("Your bag items \(bagItems)")

var totalValue = 0 
for value in bagItemsAndValues.values {
    totalValue += value
}
print("your total value is \(totalValue) coins")


// TUPLES (SEE TUPLES DOC FOR EXTENDED INFO, THIS IS EXCLIUSIVE TO DICTIONARIES)
// In dictionaries, tuples are used to iterate over key-value pairs.
var lionKing1994 = [
  "Simba": "Matthew Broderick",
  "Mufasa": "James Earl Jones",
  "Rafiki": "Robert Guillaume"
]
for (character, actor) in lionKing1994 { // TUPLE
  print("\(character) was voiced by \(actor).")
}


// if - let Statments
// An if-let statement is a Swift conditional that is used to unwrap optional values 
// which can then be assigned to variables. 
// optional values - data type that could contain a value or nil (no vlaue)
// Conditional unwrapping uses conditional statements to check if an optional contains a value before assigning the value to a variable. 
// For cnditional unwrapping we use if - let statments
if let newVariable = dictionaryName[optionalValue] {
  // This code will run if the optional contains a real value
}

var animalNames = [
  "Zebra": "Equus quagga",
  "Giraffe": "Giraffa camelopardalis",
  "Elephant": "Proboscidea elephantide"
]
 // var giraffeSci = animalNames["Giraffe"] reuturns an Optional(" ") warning / error

if let giraffeSci = animalNames["Giraffe"] {
  print("A giraffe is also known as a \(giraffeSci).")
} else {
  print("There is no value.")
}






// REVIEW 
// A dictionary is an unordered collection of key-value pairs.
// A key is a unique identifier used to create, update, remove, or access an associated value.
// We can create populated dictionaries using dictionary literals:
// var dictionaryName = [Key1: Value1, Key2: Value2]
// An empty dictionary contains no key-values pairs. There are two methods of initializing an empty dictionary:
// // Initializer Syntax:
// var emptyInitializer = [KeyType: ValueType]()
// // Dictionary Literal Syntax:
// var emptyLiteral: [KeyType: ValueType] = [:]
// We can add elements to a dictionary using subscript syntax:
// We can remove dictionary elements using .removeValue() or by setting a key value to nil.
// We can remove all the values from a dictionary with .removeAll().
// We can update the value of a key-value pair using subscript syntax or .updateValue().
// The .isEmpty property returns a boolean that equals true if a dictionary is empty.
// The .count property returns the number of elements contained within a dictionary.
// We can access a value using its key.
// We can use for-in loops to iterate through the content of a dictionary.
// We can use the .keys property to access only the keys of a dictionary.
// We can use the .values property to access only the values of a dictionary.






// Morse Decoder
var englishText = "this is a secret message"
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."
var letterToMorse: [String: String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--.."
]
var morseText = ""
var decodedMessage = ""
var morseCodeArray = [String]()
var currMorse = ""

for element in englishText {
    if let morseChar = letterToMorse["\(element)"] {
      morseText += morseChar + " "
    }
    else {
      morseText += "   "
    }
}
print(morseText)
// We reach this switch statement only when the value of char is a space. 
// Now we need to figure out if this a space between two Morse code letters or two Morse code words.
// Our default case executes when we’ve reached the end of a Morse code letter.
//  Since we collected all the characters we need, we will append this value to morseCodeArray. 
// Then, we will reset the value of currMorse to "" so we can start building the next Morse code letter.
// The second case will be run if currMorse has a value of a single space (" "). 
// This means that we are working with the second space between two Morse code words. 
// We will reflect this spacing between words by appending a single space (" ") to morseCodeArray.
// Once this is done, we reset currMorse to have a value of "".
// The first case executes when currMorse has an empty String value ("").
// This means we may have hit the first space between two Morse code letters. 
//In this statement, we will change currMorse to have a value of a single space (" ").
// If it is a space between two words, in the next iteration, the second switch case will be true and a space(" ") will be appended to morseCodeArray.
for char in secretMessage {
    if char != " " {
        currMorse.append(char)
    }
    else {
        switch currMorse {
            case "":
                currMorse += " "
            case " ":
                morseCodeArray.append(" ")
                currMorse = ""
            default:
                morseCodeArray.append(currMorse)
                currMorse = ""
        }

    }
}
morseCodeArray.append(currMorse)
print(morseCodeArray)

var morseToLetter: [String: String] = [:]
for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}
print(morseToLetter)

for morseValue in morseCodeArray {
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage.append(letterChar)
  }
  else {
    decodedMessage.append(" ")
  }
}
print(decodedMessage)




//***
// Functions
// Chunks of reusable code to achieve a certian outcome
// A function definition consists of a function’s name, optional input values, and the type of value the function returns. 
func functionName() -> returnType { //return arrow (->) with the type of data the function gives back, or returns
} 
func functionName() { // where the -> and type are omitted entirely.
}
func functionName() -> Void { // where Void is listed as the type.
}
func greeting() -> Void {
  print("Hey there!")
  print("How are you doing today?")
} 
greeting()


// Returning a Value
let birthYear = 1990
var currentYear = 2024
//
func findAge() -> Int {
  return currentYear - birthYear
}
var age = findAge()
print(age)
//
let weight = 70.0 // in Kilograms
let height = 1.73 // in Meters
func findBMI() -> Double {
  return weight / (height*height)
}
print(findBMI())


// Parameters and Arguments 
// Optional input values that exist between the () in a functin defintion 
// Allows a function to directly accept the input it need to execute a task
// Defined as:
func someFunction(paramName: paramType) -> returnType {
   // function body where paramName can be used
}
//
func findSquareOfBox(side: Int) -> Int {
  return side * side
} 
// Accepts a single parameter, side, of the type, Int, and returns a value of the Int type. 
// Within the function, the result of multiplying side by side is returned.
 var area = findSquareOfBox(side: 4)
print(area) // 20 
//
func findCircumference(diameter: Double) -> Double {
  return 3.14 * diameter
}
var result = findCircumference(diameter: 3)
print(result)


// Multiple Parameters
// 
// Determines if a racer qualifies
func didQualify(slowestDriver: Bool, retired: Bool) -> String { 
  if slowestDriver || retired {
    return "Eliminated"
  }
  else {
    return "Qualified"
  }
}
print(didQualify(slowestDriver: true, retired: true)) // both must = false
//
func timeToDestination(distance: Int, speed: Int) -> Int {
  let time = distance / speed
  return time
}
print(timeToDestination(distance: 6836, speed: 560))


// Argument Labels
// 
func setOvenTempurature(tempurature: Int) {
  print("The oven is now set to \(tempurature) degrees.")
}
print(setOvenTempurature(tempurature: 400))
// ReWritten with argument labels
func setOvenTempurature(to tempurate: Int) {  // place a word before the Agument to reference it later. 
    print("The oven is now set to \(tempurature) degrees.")
}
print(setOvenTempurature(to: 400))
//

var friendList: [String] = [String]()
func addFriend(name friendName: String) {
  friendList.append(friendName)
}
addFriend(name: "David")
addFriend(name: "Marissa")
addFriend(name: "Maple")
addFriend(name: "Ruth")
print(friendList)


// Omitting Argument Labels with an _ underscore
// Helps with cleaner code and less repetition
// When an _ is specified ahead of a parameter name in the definition, 
// only the argument value needs to be specified in the function call:
let firstTeamScore = 5
let secondTeamScore = 7
func findWinner(_ firstPoints: Int, secondPoints: Int) -> String {
  if firstPoints > secondPoints {
    return "Team 1 wins!"
  }
  else {
    return "Team 2 wins!"
  }
}
let result = findWinner(firstTeamScore, secondPoints: secondTeamScore)
print(result)

let adults = 2
let students = 15 
func museumEntry(_ numAdults: Int, _ numStudents: Int) -> Int {
  let studentTicket = 14
  let adultTicket = 25
  let total = (studentTicket * numStudents) + (adultTicket * numAdults)
  return total
}
let totalCost = museumEntry(adults, students)
print("The total cost of this trip is \(totalCost)$")


// Returning Multiple Values
// We can wrap the Return in a collection, such as an array or tuple. 
// The collection as a whole is considered a single value, so it can be returned from a func. 
func favoriteBook() -> (name: String, author: String, yearPublished: Int) {
  return ("Harry Potter and the Philosopher's Stone", "J.K. Rowling", 1997)
}
let book = favoriteBook()
print(book) // tuple putput
print(book.name) // use dot syntax to interact with the tuple
print(book.author)

func favoriteCuisine() -> (name: String, dish: String) {
  return ("pizza", "Hawaiian")
}
let cuisine = favoriteCuisine()
print("My fave \(cuisine.name) dish is \(cuisine.dish)")


// Implicit Return 
// Aids in shortening the code within a func. Exisits in other langs. 
// When theres only 1 expression or value in the body, we can omit 'return'
// These are optional and only there for asthetic/short code
// Single Expression
func findProduct(a: Int, b: Int) -> Int {
 a * b // return removed
}
print(findProduct(a: 4, b: 7))

func findRemainder(dividend: Int, divisor: Int) -> Int {
  dividend % divisor //return removed
}
print(findRemainder(dividend: 10, divisor: 4))


// Default Parameters
// Assign a real value to a paramter, does not require an argument when the function is called
func totalWithTip(total: Double, tip: Double = 0.2) -> Double {
  total + (total * tip) // using Implicit return
}
let total = totalWithTip(total: 50)
print(total)

func bookingTicket(passengerName: String = "David", seatClass: String = "Economy", timeOfDeparture: Int) -> String {
  "\(passengerName), your seat class is \(seatClass), and you will be departing at \(timeOfDeparture)" // using Implicit return
}
print(bookingTicket(timeOfDeparture: 9))
print(bookingTicket(seatClass: "Business", timeOfDeparture: 9))

// Variadic Parameters
// Accepts zero or more values of a certain type
// When you need to pass more then one value for a single parameter
// a func can only have one Variadic Param at a time
// funcName(name: Type...) , name type and 3 dots. Interpretted as an Array of a specific type
func avgExchangeRate(numbers: Double...) -> Double { // varidiac param that accepts 0 or more values of a Double type. Interpreted as an array
  var total: Double = 0
  let numValues = Double(numbers.count)
  for number in numbers { // iterates over each number in numbers and 
    total += number  // adds the values of number to the total each time
  }
  return total / numValues // calculates the average by dividing the total by the number of items (numValues) in numbers
}
print(avgExchangeRate(numbers: 0.79, 0.82, 0.80, 0.79, 0.78))

func avgSongLength(times: Int...) -> Int {
  var total = 0
  for time in times {
    total += time
  }
  return total / times.count // counts 
}
print(avgSongLength(times: 183, 176, 180, 176, 184, 179, 181, 180, 172, 178))


// In-Out Parameters
// Allows a function to reassign the value of a variable passed in as an argument
// Declared in the function definition after the parameter name and before its specified type
// func funcName(parameterName: inout parameterType) -> returnType {}
var currentColor = "green"
func batteryInt(percentage: Int, batteryColor: inout String) {
  if percentage < 5 {
    batteryColor = "red"
  }
  else if percentage < 20 {
    batteryColor = "yellow"
  }
  else {
    batteryColor = "green"
  }
}
batteryInt(percentage: 12, batteryColor: &currentColor) 
// an ampersand & must be used directly before the variable name that will act as the argument
// instructs the program that that var can be modified
print(currentColor)

var currentGeneratorState = "Off"
func generators(powerOutage: Bool, state: inout String) {
  if powerOutage == true {
    state = "On"
  }
  else {
    state = "Off"
  }
}
generators(powerOutage: true, state: &currentGeneratorState)
print(currentGeneratorState)


// REVIEW
// A function definition consists of a function name followed by optional parameters and a return type.
// The function body holds the function’s task.
// A function will execute only when it is called.
// A return keyword is used to return a value from a function.
// A function’s return type is specified in the function definition followed by an ->. If a function does not return any values, it’s return type is Void or the arrow and type are omitted entirely.
// A return statement can be omitted if the function consists of only one expression to return. This is called an implicit return.
// A parameter is a placeholder for a real value passed into a function. A parameter must be enclosed within () of a function definition and must have a specific type.
// An argument is a real value passed in for a parameter in the function call.
// A function can accept multiple parameters separated by commas. As many parameters as a function accepts, as many arguments or real values must be passed into the function when it is called.
// A function can return multiple values in the form of a tuple.
// Swift offers support for wide variety of parameter use cases within a function:
// Default Parameter: a parameter that sets a value to the parameter that will be used if an argument is omitted.
// Variadic Parameter: a parameter that accepts zero or more values of the parameter’s type.
// In-out Parameter: a parameter whose value is passed into a function and modified within the body.


// Rock Paper Scissors

func getUserChoice(userInput: String) -> String { // This func Determines what the user is inputing 
  if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
    return userInput
  }
  else {
    return "You can only enter rock, paper, or scissors. Try again."
  }
}

func getComputerChoice() -> String { // The func determines what the computer picks!!!
  let randomNumber: Int = Int.random(in: 0...2)
  switch randomNumber {
    case 0:
      return "rock"
    case 1:
      return "paper"
    case 2:
      return "scissors"
    default:
      return "Something went wrong"
  }
}

func determineWinner(_ userChoice: String, _ compChoice: String) -> String { // This func allows us to select a winner based on the previous funcs picks
  var decision = "It's a tie"
  switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "The computer won"
      }
      else if compChoice == "scissors" {
        decision = "The user won"
      }
    case "paper":
      if compChoice == "rock" {
        decision = "The user won"
      }
      else if compChoice == "scissors" {
        decision = "The computer won"
      }
    case "scissors":
      if compChoice == "rock" {
        decision = "The computer won"
      }
      else if compChoice == "paper" {
        decision = "The user won"
      }
    default:
      return "Something went wrong"
  }
  return decision
}

let userChoice = getUserChoice(userInput: "paper") // These conts allow us to pass the previous funcs as arguments to determine a winner
let compChoice = getComputerChoice()
print("You threw \(userChoice)")
print("The computer threw \(compChoice)")
print(determineWinner(userChoice, compChoice))




//***
// Structures
// Used to programmatically represent a real-life object in code
// creates a new type
// a blueprint.template for objects in our program
// start with a struct and change to class if inheritance or reference type is needed
// 
struct Name {
    // Properties
    // Methods
}

struct Dog {
    var age: Int   // properties
    var isGood: Bool
}

struct Book {
    var title: String // properties
    var pages: Int
}


// Default Property Values
// Assigning default values is identical to assigning values to variables
struct Dog {
    var age = 0
    var isGood = true
}

struct Book {
    var title = ""
    var pages = 0
}


// Creating an Instance 
// Creates induvidual objects using a structure
struct Dog {
    var age = 0
    var isGood = true
}
var eloise = Dog()
print(eloise)


// Accessing and Editing Properties
// instances of a struct can have different property values. 
// Access them with an instance.property syntax
struct Dog {
    var age = 0
    var isGood = true
}
var eloise = Dog()
eloise.age = 7
print(eloise)
print(eloise.isGood)


// The Init Method
// Methods are functions specific to a type (structure)
// init()
// doesnt need params but can take them
// uses the self keyword to refer to itself
struct Dog {
    var age: Int
    var isGood: Bool
    init(age: Int, isGood: Bool) {
        self.age = age
        self.isGood = isGood
    }
}
var bucket = Dog(age: 4, isGood: true)
print(bucket.age)   
print(bucket.isGood)
//
struct Book {
  var title: String
  var pages: Int
  init(title: String, pages: Int) {
    self.title = title
    self.pages = pages
  }
}
var theHobbit = Book(title: "The Hobbit", pages: 300)
print(theHobbit)


// Memberwise Intialization 
// in certain cases we dont need init() 
// structures also come with built-in initializer 
struct Dog {
  var age: Int
  var isGood: Bool
}
var eloise = Dog(age: 5, isGood: true)
//
struct Book {
  var title: String
  var pages: Int
}
var theHobbit = Book(title: "The Hobbit", pages: 300)
print(theHobbit)


// Structure Methods
// functions that are within the scope of the structure
struct Dog {
    var age: Int
    var isGood: Bool

    init(age: Int, isGood: Bool) {
        self.age = age
        self.isGood = isGood
    }

    func bark() {
        print("bork")
    }
}
var eloise = Dog(age: 4, isGood: true)
eloise.bark()
//
struct Band {
  var genre: String
  var members: Int
  var isActive: Bool
  
  init(genre: String, members: Int, isActive: Bool) {
    self.genre = genre
    self.members = members
    self.isActive = isActive
  }
  
  func pumpUpCrowd() -> String {
    if self.isActive == true {
      return "Are you ready to ROCK?"
    }
    else {
      return "..."
    }
  }
}
var fooFighters = Band(genre: "rock", members: 6, isActive: true)
print(fooFighters.pumpUpCrowd())



// Mutating Methods
// How to change an instances properties using an Instance Method
struct Dog {
    var age: Int
    var isGood: Bool

    init(age: Int, isGood: Bool){
        self.age = age
        self.isGood = isGood
    }

    mutating func birthday() -> Int {
        print("Best doggy")
        self.age += 1
        return self.age
    }
}
var eloise = Dog(age: 10, isGood: true)
var newAge = eloise.birthday()
print(newAge)
//
struct Band {
  var genre: String
  var members: Int
  var isActive: Bool
  
  init(genre: String, members: Int, isActive: Bool) {
    self.genre = genre
    self.members = members
    self.isActive = isActive
  }
  
  func pumpUpCrowd() -> String {
    if self.isActive {
      return "Are you ready to ROCK?"
    } else {
      return "..."
    }
  }
  mutating func changeGenre(newGenre: String) -> String {
    self.genre = newGenre
    return self.genre
  }
}
var journey = Band(genre: "jazz", members: 5, isActive: true)
var bandsNewGenre = journey.changeGenre(newGenre: "rock")
print(bandsNewGenre)


// Type
// type(of: variable)

struct Dog {
  var age = 0
  var isGood = true
}
var eloise = Dog()
print(type(of: eloise))

struct Pets {
  var petDog: Dog // used after the Dog struct
  var petCat: Cat // Need to make a Cat struct!
}


// Structures are Value Types
// data types can be value typs or reference types
// meaning different data types are stored and accessed in different ways
// meaning every time an instance is created or copied the instance has its own set of unique values
struct Dog {
  var age = 0
  var isGood = true
}
var youngDog = Dog(age: 5, isGood: true) 
var oldDog = youngDog // oldDog stores the values of youngDog and is its own instance
oldDog.age = 10 

print(oldDog.age)   // Prints: 10
print(youngDog.age) // Prints: 5
//
struct Finch {
    var lengthInCm: Double
    var nestLocation: String

    init(lengthInCm: Double, nestLocation: String) {
        self.lengthInCm = lengthInCm
        self.nestLocation = nestLocation
    }
}

var groundFinch: Finch = Finch(lengthInCm: 15.0, nestLocation: "Bush")
var cactusFinch: Finch = groundFinch
cactusFinch.nestLocation = "Cactus"

print(cactusFinch.nestLocation)
print(groundFinch.nestLocation)


// REVIEW 
// Structures are a means of modeling real-life objects programmatically.
// How to create a structure using the struct keyword along with properties and methods.
// Structure properties are used to describe the characteristics and values of the structure.
// To model individual objects, we can create instances of structs, which may have unique property values.
// We can access and edit properties using dot notation.
// If we know that most of our instances will have a specific property value, we can assign default property values inside the struct.
// Using the init() method allows us to provide an instance with specific values for the structure’s given properties.
// Even without an init() method, structs come with a default memberwise initialization method that can assign values to declared properties inside a struct.
// Structures can have methods that are functions accessible to their instances.
// Structures are value types, any copied struct that has its properties altered will not affect the original structure from which it was copied.



// Structured Gym Regimen
// 1st structure keeps track of:
// its name. what muscle groups it targets.
// how many repetitions (reps) we should do in one go.
// how many rounds of repetitions we should do (sets). How many total reps we’ll be doing.
// 2nd structure to keep track of all the exercises: 
// track the day of the week.
// store the exercises we should do for a given day.
// include a method to remind us of a given day’s workout regimen.
struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = sets * reps
  }
}
var pushUp: Exercise = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 35, sets: 5)
var squats = Exercise(name: "Squat", muscleGroups: ["Legs", "Glutes"], reps: 50, sets: 10)
var pullUp = Exercise(name: "Pull Up", muscleGroups: ["Biceps", "Back"], reps: 10, sets: 3)

struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

  func printExercisePlan() {
    print("Today is \(self.dayOfWeek) and the plan is to: ")
    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
      print("That's a total of \(exercise.totalReps) \(exercise.name)s")
    }
  }
}
var mondayRegimen: Regimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp, squats])
print(mondayRegimen.printExercisePlan())


// Add a mutating method to the Regimen structure to add exercises.
// Fix for Loop to display totals together



//***
// Classes
// like a structure, it serves as a blueprrint/template for an object. 
// defines the characteristics and behaiviors of an object
// difference between a struct: 
// Inheritance - enables classes to inherit each others characteristics
// Classes are reference types, structures are value types
// i.e. Use an exisitng Employee ID badge to create a Manager ID badge with higher clearence



// Creating a Class
class Name {
    // properties
    // methods
}

class Restaurant {
    var name = ""
    var type = [""]
    var rating = 0.0
    var delivery = false
}

// Creating and instance
// the term "object" is used to refer to an instance of a class
// the class is just the blueprint
class Restaurant {
    var name = ""
    var type = [""]
    var rating = 0.0
    var delivery = false
}
var bobsBurgers = Restaurant()
bobsBurgers.name = "Bob's Burgers"
bobsBurgers.type = ["Burgers", "Fast Food"]
bobsBurgers.rating = 3.5
bobsBurgers.delivery = true
print(bobsBurgers.name, bobsBurgers.type, bobsBurgers.rating, bobsBurgers.delivery)


// init() method
// you will need to define an init() method when you require custom 
// initialization logic, have properties without default values, 
// or want to provide additional convenience initializers.

class Restaurant {
    var name = ""
    var type = [""]
    var rating = 0.0
    var delivery = false

    init(name: String, type: [String], rating: Double, delivery: Bool) {
        self.name = name
        self.type = type
        self.rating = rating
        self.delivery = delivery
    }
}
var laRatatouille = Restaurant(name: "la Ratatouille", type: ["French"], rating: 4.7, delivery: false)
print(laRatatouille.name)
print(laRatatouille.type)
print(laRatatouille.rating)
print(laRatatouille.delivery)


// Inheritance
// When defining a class, it can inherit another classes properties and methods
// This is where classes differ from structures
// Inherting class is a SUBCLASS
// class it inherits from is a SUPERCLASS
class BankAccount {
    var balance = 0.0
    func deposit(amount: Double) {
        balance += amount
    }
    func withdraw(amount: Double) {
        balance -= amount
    }
}
class SavingsAccount: BankAccount {  // <- Inheritance 
    var interest = 0.0
    func addInterest() {
        let interest = balance * 0.005
        self.deposit(amount: interest)
    }
}


// Overriding Methods
// redeclare it in the subclass with the override keyword
class BankAccount {
    var balance = 0.0
    func deposit(amount: Double) {
        balance += amount
    }
    func withdraw(amount: Double) {
        balance -= amount
    }
}
class SavingsAccount: BankAccount {  // <- Inheritance 
    var interest = 0.0
    var numWithdraw = 0
    func addInterest() {
        let interest = balance * 0.005
        self.deposit(amount: interest)
    }
    override func withdraw(amount: Double) {
        balance -= amount
        numWithdraw += 1 // runs the function so a tally is added
    }
}
//
class Order {
  var items = [""]
  var subtotal = 0.0
  var tip = 0.0
  var total = 0.0

  func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Total:     $\(total)")
  }
}
class DeliveryOrder: Order {
  var deliveryFee = 2.0
  override func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Delivery:  $\(deliveryFee)") // added the delivery fee
    print("Total:     $\(total)")
  }
}
var order2 = DeliveryOrder()
order2.items = ["Ramen", "Diet Coke"]
order2.subtotal = 14.69
order2.tip = 2.00
order2.deliveryFee = 3.00
order2.total = 19.69

order2.printReceipt()


// Classes are Reference Types
// another distinction between structs and class
// struct = value, class = reference 
// unlike values, reference types are not copied when they are assigned to a var or let(contant) 
// or when they are passed to a function
class Order {
  var items = [""]
  var subtotal = 0.0
  var tip = 0.0
  var total = 0.0
  
  init(items: [String], subtotal: Double, tip: Double, total: Double) {
    self.items = items
    self.subtotal = subtotal
    self.tip = tip
    self.total = total
  }
}
var order1 = Order(items: ["Chili Fries", "Lemonade"], subtotal: 8.75, tip: 2.0, total: 12.75)
var order8 = order1
order8.total = 0.0
print(order1.total)
print(order8.total)



// REVIEW
// A class is another means of modeling real-life objects programmatically.
// How to create a class using the class keyword.
// Using the init() method allows us to provide an instance with specific values right off-the-bat during the creation of an instance.
// A class can inherit another class’s properties and methods.
// When using inheritance, the subclass can use the override keyword to redeclare a method with the same name.
// Classes are reference types, any copied class that has its properties altered will affect the original class from which it was copied.


// POKEDEX
// Add more properties to the Pokemon class
// Add more methods to the Pokemon class

class Pokemon {
  var num = 0
  var name = ""
  var type = [""]
  var ability = [""]

  init(num: Int, name: String, type: [String], ability: [String]) {
    self.num = num
    self.name = name
    self.type = type
    self.ability = ability
  }

func displayInfo() {
  print("Pokemon Information:")
  print("Number:    \(num)")
  print("Name:      \(name)")
  print("Type:      \(type)")
  print("Ability:   \(ability)")
  print("************************")
}

}


class GigantamaxPokemon: Pokemon {
  var location = ""
      //the new init() need to include the Superclasses init arams as well, but in supr.init() form
  init(num: Int, name: String, type: [String], ability: [String], location: String) {
    self.location = location
    super.init(num: num, name: name, type: type, ability: ability)
  }
  override func displayInfo() {
  print("Pokemon Information:")
  print("Number:    \(num)")
  print("Name:      \(name)")
  print("Type:      \(type)")
  print("Ability:   \(ability)")
  print("Location:  \(location)")
  print("************************")
}
}

var charizard = GigantamaxPokemon(num: 6, name: "Charizard", type: ["Fire 🔥"], ability: ["Blaze"], location: "Lake of Outrage")
var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass 🌱", "Poison 💀"], ability: ["Overgrow"])
var charmander: Pokemon = Pokemon(num: 4, name: "Charmander", type: ["Fire 🔥"], ability: ["Blaze"])
var squirtle: Pokemon = Pokemon(num: 7, name: "Squirtle", type: ["Water 💧"], ability: ["Torrent"])

bulbasaur.displayInfo()
charmander.displayInfo()
squirtle.displayInfo()
charizard.displayInfo()




//***
// Enumerations - enum 
// A data type 
// Swift extends their functionality offing capabilites only found in classes. 

enum MyDataType {
  // entire enum definition lives here
}

enum DogBreed {
    case corgi
    case husky
    case shiba
}
// or
enum DogBreed {
    case corgi, husky, shiba
}


// Updating an instance of an enum
//
enum DogBreed {
    case corgi, husky, shiba
}
var bella = DogBreed.husky
bella = .corgi // no need to define DogBreed as the compiler knows and bella is from

print("Hello \(bella)")


// Enums in a Swift Control Flow
// switch statements are common places for an enum
// No need for a default at the end of the 'switch'/case either. 
enum Pet {
    case ruth, meepa, rusty
}
let myPet = Pet.meepa
switch myPet {
    case .ruth:
        print("I am the night do not percieve")
    case .meepa:
        print("I am anger do not touch")
    case .rusty:
        print("I was good boy")
}


// iterating over Enum cases
// utilize a protocol
// protocols define a set of methods and properties that can be adopted by an enum
// : CaseInterable protocol gives us access to the property allCases that returns an array of case values
enum Season: CaseIterable {
    case winter
    case spring
    case summer
    case fall
}
for season in Season.allCases {
    print(season)
}


// Defining raw values for enum cases
// 
enum Team: Int {
    case alpha = 1 // defines the raw value for each following case as well
    case bravo
    case charlie
    case delta
}
let team = Team.bravo
print(team.rawValue) // Prints: 2
print(Team.delta.rawValue) //Prints: 4

enum Status: String {
    case complete // if no raw value for string defined, defaults to case name
    case pending
    case rejected
}
let myStatus = Status.complete
print(myStatus.rawValue) // Prints: complete


// Using Associated values with enums
// ability to store an associated value of any type attached to a case value
// different then raw values as each case can have a different type of associated value or none
enum Dessert {
    case cake(flavor: String) // defining an associated value
    case pie(slices: Int)
    case brownie
}
let tonightsSpecial = Dessert.pie(slices: 2)
let tomorrowsSpecial = Dessert.brownie
switch tonightsSpecial {
    case let .cake(cakeFlavor):
        print("Time for \(cakeFlavor) cake!")
    case let .pie(sliceCount):
        print("\(sliceCount) slices of pie!")
    case .brownie:
        print("Decadent goodness.")
}
switch tomorrowsSpecial {
    case let .cake(cakeFlavor):
        print("Time for \(cakeFlavor) cake!")
    case let .pie(sliceCount):
        print("\(sliceCount) slices of pie!")
    case .brownie:
        print("Decadent goodness.")
}

enum Vehicle {
    case truck(isFourWheelDrive: Bool)
    case boat
    case airplane
}
 
let myRide = Vehicle.truck(isFourWheelDrive: true)
switch myRide {
case let .truck(isFourWheelDrive): 
    if isFourWheelDrive {
        print("Let's go to the mountains")
    } else {
        print("Let's go to the store")
    }
case .boat:
    print("Let's sail to Hawaii")
case .airplane:
    print("Let's fly to Peru")
}


// Implementing Methods in Enumerations
// can define an instance method inside of an enum
// mutating method within an enum, mutating method changes the values of its intance when executed
enum Season {
    case winter, spring, summer, fall

    mutating func changeSeason() {
        switch self {
            case .winter:
                self = .spring
            case .spring:
                self = .summer
            case .summer:
                self = .fall
            case .fall:
                self = .winter
        }
    }
}
var currentSeason = Season.fall // declares the season to be fall
currentSeason.changeSeason() // calls the change season func to the case of fall -> winter
print(currentSeason)

enum Vehicle {
    case truck(isFourWheelDrive: Bool)
    case boat
    case airplane
    
    // mutating instance method here
    mutating func goOffRoad() {
      self = .truck(isFourWheelDrive: true)
    }
}
var myRide = Vehicle.airplane
myRide.goOffRoad()
print(myRide)


// Implementing a Computed Property in an Enumeration
// computed property is a property that isn't directly stored 
// but is instead derived from other stored properties of the enum
// can return any type of value and doesn't need to be the same as the rawValue
enum Patty: Int {
    case single
    case double
    case triple
    var pattyCountWithExtraPatty: Int {  // computed variable property
        return self.rawValue + 1
    }
}
let burger = Patty.triple.pattyCountWithExtraPatty
print(burger)

enum Vehicle {
    case airplane
    case boat
    case truck(isFourWheelDrive: Bool)
    var description: String {
        switch self {
        case .airplane:
            return "This is an airplane"
        case .boat:
            return "This is a boat"
        case let .truck(isFourWheelDrive):
            return "This is a truck" + (isFourWheelDrive ? " with four wheel drive" : "")
        }
    }
}
let myRide = Vehicle.truck(isFourWheelDrive: true)
print(myRide.description)


// REVIEW 
// What an enumeration is
// How to use enumerations in a switch control flow
// How to iterate over enumerations cases like a collection
// Defining raw values in an enumeration
// Explicitly and implicitly assigning raw values
// Extracting raw values for cases
// Initializing an instance with a raw value
// All cases must have the same type of raw value
// Defining associated values in an enumeration
// Associated values can be differently typed for each case
// All cases don’t need associated value
// Implementing methods in enumerations
// Use of mutating methods
// Defining computed properties in enumerations
// Enumerations are indeed first class citizens in Swift and can help you write clean, expressive code


// Numero Uno Software Store
// 
enum DeliveryMethod {
    case cloudDigital(isLifetime: Bool)
    case shipping(weight: Int)

    var shippingCost: Int {
        switch self {
            case .shipping(let weight): 
                return weight * 2
            case .cloudDigital:
                return 0
        }
    }
}
enum Edition: String {
    case basic 
    case premium
    case ultimate

    mutating func upgrade() {
        switch self {
            case .basic:
            self = .premium 
            case .premium:
            self = .ultimate
            case .ultimate:
            print("Can't upgrade further")
        }
    }
}
enum ProductType: String, CaseIterable {
    case aceRepository = "Ace Repository"
    case dealForcer = "Deal Forcer"
    case kadencePlanner = "Kadence Planner"
    case mailCannon = "Mail Cannon"
}

func displayProductOfferings() {
    print("There are \(ProductType.allCases.count) products")
    for product in ProductType.allCases {
            print(product.rawValue)
    }
}

func sendOrderConfirmation(of productType: ProductType, in edition: Edition, by deliveryMethod: DeliveryMethod) {
    print("Thank you for purchasing the \(edition.rawValue) edition of \(productType.rawValue)")
    switch deliveryMethod {
        case .shipping:
            print("Your order will be shipped to you at a cost of $\(deliveryMethod.shippingCost)")
        case .cloudDigital(let isLifetime):
            if isLifetime {
                print("You have lifetime cloud access")
            } else {
                print("You can access you subscription information on the cloud")
            }
    }
}

displayProductOfferings()
var myEdition = Edition.basic
myEdition.upgrade()
sendOrderConfirmation(of: ProductType.aceRepository, in: myEdition, by: DeliveryMethod.shipping(weight: 1))



//***
// Optionals
// either contain a value or nil


// Defining Optionals
// defined with a question mark ? 
// Optionals can be assigned to either nil or an instance of the optional type.
// Its initial value will be nil unless you assign a value yourself:

var firstLetter: Character? 
print(firstLetter) // nil

firstLetter = "a" // Optional("a")
print(firstLetter)

// ANALYZE THESE ERRORS
var hatColor: String? = nil
hatColor = "blue"
hatColor = nil
print(hatColor)


// Force Unwrapping Optionals with !
// once an optional is created, this is how to access the var inside
var a = 4
var b: Int? = 3 // IF THIS IS nil THE PROGRAM WILL CRASH
let sum = a + b!
print(sum)

// Use an if statement to check if nil
var a = 4
var b: Int? = nil
if b != nil {
    let sum = a + b! // UNWRAP WITH !
    print(sum)
} else {
    print("nil")
}

var flightDistance = 1000
var connectinFlightDistance: Int? = 2000
if connectinFlightDistance != nil {
    let totalFlightDistance = flightDistance + connectinFlightDistance! // UNWRAP WITH !
    print(totalFlightDistance)
}


// Optional Binding
// check if a value is not nil in an if statment, then make a new constant that stores the underlying value
var errorMessage: String? = nil
if let errorMessage = errorMessage { // let errorMessage is newly created cont and seperate from the var errorMessage
    print("Error: \(errorMessage)")
} else {
    print("No error message")
}

var firstName = "David"
var lastName = "Guffre"
var suffix: String? = nil
if let suffix = suffix {
    print("Hello \(firstName) \(lastName) \(suffix)")
} else {
    print("Hello \(firstName) \(lastName)")
}


// Multiple Optional Bindings
// if let statements are a great way to handle optional values
// we can bind them into a single statement instead of a bunch of nestetd if lets, remove the IFs and {} replace with a comma , 
if let a = a, let b = b, let c = c, shouldPrintSum {
    print(a + b + c)
}
if  let a: Int = a, 
    let b: Int = b,
    let c: Int = c,
    shouldPrintSum {
        print(a + b + c)
    }

var language = "Swift"
var firstRelease: Int? = 2014
var website: String? = "swift.org"
var designer: String? = "Chris Lattner"
var shouldDisplayMessage = true

if  let firstRelease = firstRelease, 
    let website = website, 
    let designer = designer, 
    shouldDisplayMessage {
    print("""
        \(language) was first released in \(firstRelease).  
        Its website can be found at \(website).
        It was designed by \(designer).
        """)
}


// Guard statements
// another way to avoid overly nested code
// must have an else statement and exit the current scope. 
func greetUser(isAuthenticated: Bool) {
    guard isAuthenticated else { // if isAuthenticated is true, exec code, else printError then reuturn
        print("Error: user is not authenticated")
        return
    }
    print("Hello user!")
}

//They can be used to exit the scope of loops as well
var nums = [3, 1, 0, 6]
for num in nums {
    guard num != 0 else {
        print("Can't divide \(num) by zero!")
        continue
    }
    print("10 / \(num) = \(10 / num)")
}

// They can be used to bind optionals just like if let statements, and support multiple assignments
func addOptionals(shouldPrintSum: Bool) {
    let a: Int? = 1
    let b: Int? = 2
    let c: Int? = 3

    guard let unwrappedA = a, 
          let unWrappedB = b,
          let unWrappedC = c, 
          shouldPrintSum else {
          return
    }
    print(unwrappedA + unWrappedB + unWrappedC)
}
addOptionals(shouldPrintSum: true)


func runProgram() {
    let language = "Swift"
    let firstRelease: Int? = 2014
    let website: String? = "swift.org"
    let designer: String? = "Chris Lattner"
    let shouldDisplayMessage = true

    guard let unwrappedRelease = firstRelease, 
          let unwrappedWebsite = website, 
          let unwrappedDesigner = designer, 
          shouldDisplayMessage else {
            return
            }
            print(
                """
                \(language) was first released in \(unwrappedRelease).  
                Its website can be found at \(unwrappedWebsite).
                It was designed by \(unwrappedDesigner).
                """)
}
runProgram()


// Nil-Coalescing Operator ??
// allows us to provide a default value if the optional is nil
// syntax optionalVal ?? defaultVal, same type as the optional. 
var userLocation: String? = "Home"
let displayedLocation = userLocation ?? "Unknown"
print(displayedLocation)
//IF NIL 
var secondUserLocation: String?
var secondDisplayLocation = secondUserLocation ?? "Unknown"
print(secondDisplayLocation)

var favoriteFood: String?
print(favoriteFood ?? "No Favorite Food")


// Optional Chaining with ?
// chaining properties and method calls on a var
var studentGovernment = [
    "president": "Shristi",
    "treasurer": "Diego"
]
if let presidentsNameLength = studentGovernment["president"]?.count { // access president in studentGovernment and counts the chars. 
  print("The president's name is \(presidentsNameLength) characters long")
}
if let vicePresidentNameLength = studentGovernment["vicePresident"]?.count {
  print("The vice president's name is \(vicePresidentNameLength) characters long")
} else {
  print("There is no vice president")
}


// Optionals and Functions
// optionals are types just like Array and String, we can use them in the signature of a function
// usefull as there may not always be a good value to return


let words = ["optionals", nil, "are", "great", nil, "at", "handling", nil, "values"]

func firstIndex(of target: String, in arr: [String?]) -> Int? {
  for i in arr.indices {
    guard let value = arr[i], value == target else { continue }
    return i
  }
  return nil
}

if let greatIndex = firstIndex(of: "great", in: words) {
  print(greatIndex)
}

if let badIndex = firstIndex(of: "bad", in: words) {
  print(badIndex)
} else {
  print("words does not contain the string 'bad'")
}


// REVIEW 
// Great work! By using optionals, you can make sure to handle values that might be nil. 
// A value might be nil because the user didn’t provide a response. 
// A value might also be nil because we might not have a good answer to a question (e.g. what’s the biggest number in an empty list).
// In this lesson you learned how to:
// Define optionals
// Force unwrap optionals using the ! operator
// Bind optionals using if let statements
// Bind optionals using guard statements
// Use the nil-coalescing operator ?? to provide default values
// Chain optionals using the ? operator
// Define functions that take in and return optionals

var emptyArr: [Int] = []

print(emptyArr.first ?? "No first value")
print(emptyArr.last ?? "No last value")
print(emptyArr.randomElement() ?? "No random value")
print(emptyArr.max() ?? "No maximum value")
print(emptyArr.min() ?? "No minimum value")
print(emptyArr.firstIndex(of: 4) ?? "4 is not in the array")
print(emptyArr.popLast() ?? "No values to pop from an empty array")


// School Database
//
struct Teacher {
    let id: Int
    let name: String
    var hairColor: String?
    var email: String?
}

struct Student {
    let name: String
    let favoriteTeacherID: Int
}

struct School {
    let name: String
    let teachers: [Teacher]

    func getTeacher(withID id: Int) -> Teacher? {
        for teacher in teachers {
            if teacher.id == id {
                return teacher
            }
        }
        return nil
    }
    
    func printFavoriteTeacherInfo(for student: Student) {
        guard let favoriteTeacher = getTeacher(withID: student.favoriteTeacherID) else {
            print("No teacher with the id \(student.favoriteTeacherID) works at \(name)!")
            return
        }
        print("\(student.name)'s favorite teacher is \(favoriteTeacher.name)")
        print("They have \(favoriteTeacher.hairColor ?? "no") hair")
        guard let email = favoriteTeacher.email else {
            print("They don't have an email address on file")
            return
        }
        print("Their email address is \(email)")
    }
}


let teachers = [
    Teacher(id: 592, name: "Mr. Weatherbee", hairColor: nil, email: "thebee@riverdale.com"),
    Teacher(id: 481, name: "Ms. Grundy", hairColor: "white", email: nil),
    Teacher(id: 688, name: "Mr. Adams", hairColor: "black", email: "arthurAdams@riverdale.com")
]

let riverdaleHigh = School(name: "Riverdale High", teachers: teachers)

let archie = Student(name: "Archie Andrews", favoriteTeacherID: 481)
let betty = Student(name: "Betty Cooper", favoriteTeacherID: 443)

riverdaleHigh.printFavoriteTeacherInfo(for: archie)
riverdaleHigh.printFavoriteTeacherInfo(for: betty)



//***
// Closures
// self-contained chunks of code that are first-class citizens in Swift.
// Meaning that can be assigned to variables and passed as arguments(params) to functions

//Func
// func functionName(parameters) -> ReturnType {
  // function tasks go here
// }
//Closure
// { (parameters) -> returnType in
  // closure tasks go here
// }
//IE
let myClosure = {
  print("This is my closure")
}


let helloClosures = { print("Hello closures!") }
helloClosures()

// If we take the formula for Feet to Meters 
// LengthInFeet = LengthInMeters * 3.281
let metersToFeet = { (meters: Double) -> Double in
  return meters * 3.281
}
// With Type inferance, it looks like this 
let metersToFeet = { meters in meters * 3.281 }
print(metersToFeet(324))

// takea a String input, and returns Void. 
// Name the param turtle, and switch turtle to print its ability
let turtleAbility: (String) -> Void = { turtle in  
  switch turtle {
  case "Leonardo":
    print("Jujitsu")
  case "Raphael":
    print("Super strength")  
  case "Donatello":
    print("Intelligence") 
  case "Michelangelo":
    print("Eating pizza")  
  default:
    print("Unknown TNMT")
  }
}
//Defining a second closure of the same type and passing it to the description func, to get different functionality
let turtleColor: (String) -> Void = { turtle in  
  switch turtle {
  case "Leonardo":
    print("Blue")  
  case "Raphael":
    print("Red")  
  case "Donatello":
    print("Purple")  
  case "Michelangelo":
    print("Orange")  
  default:
    print("Unknown TNMT")
  }
}

//function that takes a String and closure as a param
//String input named turtle, closure named descriptionClosure(which makes the type of turtleAbility(Void))
func description(for turtle: String, descriptionClosure: (String) -> Void) {
  descriptionClosure(turtle)
}

description(for: "Donatello", descriptionClosure: turtleColor)

// For this exercise we will create a game that calculates the sum of a hand of cards. 
// We will make the game configurable such that it accepts a closure defining the rules for how cards are counted.

let cards = [8,2,5,3,4]
func handValue(cards: [Int], scoringRules: (Int) -> Int) -> Int {
    var totalValue = 0
    for card in cards {
        totalValue += scoringRules(card)
    }
    return totalValue
}

let allCards = { (card: Int) -> Int in
    return card
}
print(handValue(cards: cards, scoringRules: allCards))

let onlyEvens = { (card: Int) -> Int in
    if card.isMultiple(of: 2) {
        return card
    } else {
        return 0
    }
}
print(handValue(cards: cards, scoringRules: onlyEvens))


// We can define closures as we call functions without hacing to assign it to a variable
// Trailing closures:
//Accepts closure as an argument
func networkRequest(endAction: () -> Void) {
  // Get data from online
   completion()
}
// Defining the closure inline when we call the function
networkRequest(endAction: { print("Data loaded!") })

//Multiple Trailing Closures
func networkRequest(startAction: () -> Void, endAction: () -> Void) {
   startAction()
  // function execution
   endAction()
}
// Called like:
networkRequest {
  print("Starting to Load!")
} endAction: {
  print("Data loaded!")
}



// Syntactic Sugar
// Closures are very common in Swift and there are ways to shorten the code
// Type inference: Swift is a strongly typed language meaning it can infer the types based on the function definition. 
//   We don’t need to be explicit with the parameter types and return types.
// Implicit returns: If a closure has a single expression, the return keyword can be omitted. Swift can infer the return type based on the function definition
// Shorthand argument names: argument names can be omitted in favor of $0, $1, and so on, corresponding to each argument in the closure
// Operators: Swift’s Int type has an Int-specific definition of the + operation that matches the type of the closure. T

func performOperation(on valueOne: Int, and valueTwo: Int, using operation: (Int, Int) -> Int) -> Int {
    operation(valueOne, valueTwo)
}
// Turn the function call:
performOperation(on: 1, and: 3, using: { (valueOne: Int, valueTwo: Int) -> Int in
  return valueOne + valueTwo
})
// Into this: 
performOperation(on: 1, and: 3) { $0 + $1 }
// Since that are both Int, you can even shorten using the operator +: 
performOperation(on: 1, and: 3, using: +)


// Built in Higher Order Functions
// Most common are: Filter, Sort, Map, Reduce
var grades = [85, 76, 59, 47, 91, 88, 99, 64, 77, 50, 60, 80]
let passingGrades = grades.filter { (grade) -> Bool in return grade >= 60 }
// With Syntactic SUgar: 
let passingGrades2 = grades.filter { $0 >= 60 }
print(grades.sorted(by: <)) // lowest to highest

var names = ["Jason", "Kimberly", "Zach", "Austin", "Sarah", "Adam", "Kathy"]
let aNames = names.filter { $0.hasPrefix("A") }
print(aNames)
let sortedNames = names.sorted(by: <)
print(sortedNames)


//Escaping Closures
// A closure can be called after the function it was passed into returns. 
// This is called an escaping closure and is wrapped with the @escaping keyword
//  Closures also escape when they are assigned to a variable to be used later on.
struct Recipe {
  let ingredientAdder: (String) -> Void // a reference to the closure in the init
  
  init(ingredientAdder: @escaping (String) -> Void) {  // telling the compiler to hold a reference to the closure for later use
    self.ingredientAdder = ingredientAdder
  }
}


// Capturing Values
// With closures we can capture variables and constants outside the scope of the closure. 
// This is known as “closing over” the values that are captured. 
// One example is a nested function.
func makeFriendAdder() -> (String) -> [String] {
  var friends = [String]()
  let addFriend: (String) -> [String] = { name in
    friends.append(name)
    return friends
  }
  return addFriend
}
// With Type Inferance: 
func makeFriendAdder() -> (String) -> [String] {
  var friends = [String]()
  return { name in
    friends.append(name)
    return friends
  }
}

let friendAdder = makeFriendAdder()
friendAdder("Jake")
print(friendAdder("Kate"))

func createMultiplier(factor: Int) -> () -> Int {
  var value = 1
  let multiplier: () -> Int = {
    value *= factor
    return value
  }
  return multiplier
}
let multiplier = createMultiplier(factor: 3)
print(multiplier())
print(multiplier())
print(multiplier())




// REVIEW
// Define closures
// Pass closures to functions
// Use trailing closure syntax and closure syntax sugar
// Call built-in higher-order functions like filter
// Mark closures as @escaping so they can be stored for later
// Capture values inside a closure

// Calulator
struct Calculator {
func reduce(_ nums: [Int], using nextPartialResult: (Int, Int) -> Int, startingAt initialResult: Int) -> Int {
var total = initialResult
        for num in nums {
            total = nextPartialResult(total, num)
}
return total
}
func filter(_ nums: [Int], using isIncluded: (Int) -> Bool) -> [Int] {
var filteredNums = [Int]()
        for num in nums {
            if isIncluded(num) {
                filteredNums.append(num)
}
}
return filteredNums
}
func map(_ nums: [Int], using transform: (Int) -> Int) -> [Int] {
var mappedNums = [Int]()
        for num in nums {
            mappedNums.append(transform(num))
}
return mappedNums
}
func sort(_ nums: [Int], by areInIncreasingOrder: (Int, Int) -> Bool) -> [Int] {
var nums = nums
        for indexOne in 1..<nums.count {
var indexTwo = indexOne
            while indexTwo > 0 && areInIncreasingOrder(nums[indexTwo], nums[indexTwo - 1]) {
                nums.swapAt(indexTwo - 1, indexTwo)
                indexTwo -= 1
}
}
return nums
}
}
let calculator = Calculator()
let tips = [6,4,8,3,5,2]
let addition: (Int, Int) -> Int = { $0 + $1 }
let sum = calculator.reduce(tips, using: addition, startingAt: 0)
print(sum)
let rainfallInInches = [5,2,8,0,0,4]
let rainyDays = calculator.filter(rainfallInInches, using: { rainFall in rainFall != 0 })
print(rainyDays)
let roomPrices = [50,100,150,200,250,500]
let roomPricesWithSurchase = calculator.map(roomPrices) { $0 + 20 }
print(roomPricesWithSurchase)
let calories = [400, 800, 500, 1_000]
let sortedCalories = calculator.sort(calories, by: <)
print(sortedCalories)




//***
// Access Control - Makes code safer and robust
// allows us to control access to properties and methos within our code
// by implementing different levels of access on properties and methods, 
// we determine which other parts of the code can read their values, write to them, and execute their methods








// REVIEW
// The boundaries for access control are modules, source files, and structs.
// Public is the most permissive and allows access between modules. (useful for SDKs and frameworks)
// Internal is the default level and allows access anywhere within a module.
// File private allows access within a source file.
// Private can only be used within the scope of a struct. (least permissive)
// Private properties are defined using the private syntax.
// Memberwise initializers can’t access private properties, so you need to use default values, make them optional, or use the init method.
// Private methods use the same syntax as private properties and can only be called within the scope of the struct that defines them.
// Computed properties aren’t stored values, rather they are derived from other stored properties.
// Can be read-only. (only have getter method)
// Can set them, in which case you change the underlying properties from which they are derived.
// Property observers are built in methods that get called when properties are set.
// didSet gives us the old value.
// willSet gives us the new value.
// Properties can have a more restricted access level to set vs. get.
// Type properties are defined independently from any particular instance of a structure.




// Swift Bank
struct SwiftBank {
  // Private Properties
  private let password: String 
  private var balance: Double = 0.0

  // Static Properties
  static let depositBonusRate = 0.01

  // Initializor
  init(password: String, initialDeposit: Double) {
    self.password = password
    makeDeposit(ofAmount: initialDeposit)
  }

  // Mutating Methods
  mutating func makeDeposit(ofAmount depositAmount: Double) {
    let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)
    print("Making a depsoit of $\(depositAmount) with a bonus rate. The final amount deposited is \(depositWithBonus)")
    self.balance += depositWithBonus
  }

  mutating func makeWithdrawal(ofAmount withdrawalAmount: Double, usingPassword password: String) {
    if isValid(password) {
      print("Making a $\(withdrawalAmount) withdrawl")
      self.balance -= withdrawalAmount
    } else {
      print("Error: Invalid Password")
    }
  }

  // Private Methods
  private func isValid(_ enteredPassword: String) -> Bool {
    enteredPassword == password
  }
  
  private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
    return deposit + (deposit * SwiftBank.depositBonusRate)
  }

private func displayLowBalanceMessage() {

    print("Alert: Your balance is under $100 at: $\(balance)")
  
}
  // Methods
  func displayBalance(usingPassword password: String) {
  isValid(password) ? print("Your current balance is $\(balance)") : print("Error: Invalid password")
  }

}

var myAccount = SwiftBank(password: "1234", initialDeposit: 500)
myAccount.makeDeposit(ofAmount: 50)
myAccount.makeWithdrawal(ofAmount: 100, usingPassword: "123")
myAccount.makeWithdrawal(ofAmount: 100, usingPassword: "1234")
myAccount.displayBalance(usingPassword: "1234")



//***
// Protocols and Generics

// Protocol 
// A protocol defines a blueprint or a set of requirements that are needed to accomplish a 
// particular task. Classes, structs, and enums can conform to protocols by providing an 
// implementation of the protocol’s functions and properties.

protocol WelcomeMessagePrinting { // sets the props and methods the struct must abide to
    var helloMessage: String { get }
    func printHello()
}
struct Hello: WelcomeMessagePrinting { // var helloMessage, and func printHello() (can be moved to an extension) 
        var helloMessage: String {
        return "Welcome"
    }
    
    func printHello() {
        print(helloMessage)
    }
} 
// It is possible to have multiple types confomring to the same protocol
struct NewUserWelcomeView: WelcomeMessagePrinting {
    var helloMessage: String = "Thanks for signing up!"
    func printHello() {
        print(helloMessage)
    }
}
struct ReturningUserWelcomeView: WelcomeMessagePrinting {
    var helloMessage: String = "Welcome back!"
    func printHello() {
        print(helloMessage)
    }
}
let hello = Hello()
hello.printHello() // Prints: Welcome
var view: WelcomeMessagePrinting
view = NewUserWelcomeView()
view.printHello() // Prints: Thanks for signing up!
view = ReturningUserWelcomeView()
view.printHello() // Prints: Welcome back!
//
//
protocol Incrementable {
  var currentValue: Double { get }
  mutating func increment()
}

struct VisitorCounter: Incrementable {
  var currentValue = 0.0
  mutating func increment() {
    currentValue += 1
  }
}
struct Wage: Incrementable {
  var currentValue = 15.0 
  mutating func increment() {
    currentValue += currentValue * 0.10
  }
}
var parkGuests = VisitorCounter()
parkGuests.increment()
print(parkGuests.currentValue)
var salary = Wage()
salary.increment()
print(salary.currentValue)


// Protocol in the Swift Standard Lib
// Hashable -  used to make structs, classes, and enums able to be added to Sets and Dictionaries. 
struct Store: Hashable {
  var name: String
  var products: [String]
}

let jaysPizza = Store(name: "Jay's Pizza", products: ["Pizza", "Soda", "Salad"]) 
let salesByStore: [Store: Double] = [jaysPizza: 100] // added Store/jaysPizza to a dict
print("Hey are you going to \(jaysPizza.name) later? I here that have great \(jaysPizza.products[1])")


// Protocol Inheritance
// Protocols can inherit from another protocol, like a class can inherit from another class. 
// Protocols can even inherit from multiple protocols at the same time!
// A struct, class, or enum that conforms to a protocol must implement all requirements 
// from the protocol as well as any of the protocols that it inherits from.
protocol Viewer {
    func login()
    func logout()
    func showContent()
}
protocol Creator: Viewer {
    func uploadNewContent(name: String)
}
struct VideoContentCreator: Creator {
    func login() {
        print("Successfully logged in")
    }
    func logout() {
        print("Successfully logged out")
    }
    func showContent() {
        print("Here are the new videos")
    }
    func uploadNewContent(name: String) {
        print("Thanks for uploading your new video: \(name)!")
    }
}
//
//
protocol Car: CustomStringConvertible {
    var model: String { get }
    var topSpeed: Double { get }
    var description: String { get }
}
protocol ElectricCar: Car { // conforming to Car
    var range: Double { get }
}
protocol GasCar: Car {
    var milesPerGallon: Double { get }
}
struct Oldsmobile: GasCar {
    let model: String
    let topSpeed: Double
    let milesPerGallon: Double
    var description: String {
        "This is an Oldsmobile \(model) with a top speed of \(topSpeed) that gets \(milesPerGallon) miles per gallon"
    }
    
}
struct Tesla: ElectricCar {
    let model: String
    let range: Double
    let topSpeed: Double
    var description: String {
        "This is a Telsa \(model) with a top speed of \(topSpeed) and a range of \(range)"
    }
}
let modelX = Tesla(model: "Model X", range: 350, topSpeed: 155)
let achieva = Oldsmobile(model: "Achieva", topSpeed: 139, milesPerGallon: 32)
let cars: [Car] = [modelX, achieva]
for car in cars {
    print(car.description)
}


// Protocol Extensions
// Allows us to proviude default implementation of a protocol 
protocol PenSelling {
    var penPrice: Int { get }
    func price(withPenCount count: Int) -> Int
}
extension PenSelling {
    var penPrice: Int {
        return 2
    }
    func price(withPenCount count: Int) -> Int {
        return penPrice * count
    }
}
// automatically has a penPrice of 2 and the above implementation of price(withPenCount:) without writing any code!
struct Bookstore: PenSelling {
    let name: String
}
let miasStore = Bookstore(name: "Mia's Books")
print(miasStore.price(withPenCount: 10)) // prints 20
// Can also provide their own implementations for any or all properties and methods
struct ArtStore: PenSelling {
    let name: String
    var penPrice: Int = 5
}
let noahsStore = ArtStore(name: "Noah's Art Supplies")
print(noahsStore.price(withPenCount: 10)) // prints 50
//
//
protocol IceCreamSelling {
    var flavors: [String] { get }
}
extension IceCreamSelling {
  var flavors: [String] {
    ["Vanilla", "Chocolate"]
  }
}
struct IceCreamTruck: IceCreamSelling {
    let name: String
}
struct IceCreamParlor: IceCreamSelling {
    let name: String
    var flavors: [String] {
      ["Mint Chip", "Strawberry", "Cookie Dough"]
    }
}
let misterSoftee = IceCreamTruck(name: "Mister Softee")
let popTates = IceCreamParlor(name: "Pop Tate's")
print(misterSoftee.flavors)
print(popTates.flavors)


// Generic Functions
// < > 
// <: >
//Instead of writting: 
func max(x: Int, y: Int) -> Int { // or Double
    return x > y ? x : y
}
// Generic Funcs allows us to accept both Ints and Doubles
// shows that T conforms to the Comparable protocol but we don’t know T’s exact type
func max<T: Comparable>(x: T, y: T) -> T {
    return x > y ? x : y
}
let maxInt = max(x: 10, y: 12)
//or
let maxDouble = max(x: 22.87, y: 66.23)
print(maxDouble)

// Also applicable with funcs
func buildSingleEntryDictionary<Key, Value>(withKey key: Key, andValue value: Value) -> [Key: Value] {
    var dict = [Key: Value]()
    dict[key] = value
    return dict
}
let populations = buildSingleEntryDictionary(withKey: "India", andValue: 1.37)
let classes = buildSingleEntryDictionary(withKey: "Ms. Frizzle", andValue: ["Arnold", "Carlos", "Dorothy"])
//
//
func tripleValues<T: Numeric>(in nums: [T]) -> [T] {
    return nums.map { $0 * 3 }
}
let intArr = [1,2,3]
let doubleArr = [1.0, 2.5, 3.9]
print(tripleValues(in: intArr))
print(tripleValues(in: doubleArr))


// Generic Types
// When creating instances of generic types, the instance is locked into the type it used.
// Classes, structs, and enums can also be generic, which means they can work with many different types. 
struct InformationWrapper<T> {
    var information: T
}
var stringWrapper = InformationWrapper(information: "Hello!")
var intWrapper = InformationWrapper(information: 5)
stringWrapper = InformationWrapper(information: 4.0) // ERROR: Cannot convert value of type 'Double' to expected argument type 'String'

// Can specifiy that the type must cornform to one or more protocols
struct HashableInformationWrapper<T: Hashable> {
    var information: T
}
//
//
struct GameResult<Score: Comparable> {
    let playerOne: String
    let playerTwo: String
    let playerOneScore: Score
    let playerTwoScore: Score 
    func printWinner() {
        if playerOneScore > playerTwoScore {
            print("\(playerOne) Wins!")
        } else if playerOneScore < playerTwoScore {
            print("\(playerTwo) Wins!")
        } else {
            print("It's a tie!")
        }
    }
}
let ufcResult = GameResult(playerOne: "Forrest Griffin",
                           playerTwo: "Stephan Bonnar",
                           playerOneScore: 29,
                           playerTwoScore: 28)
ufcResult.printWinner()
let chessResult: GameResult<Double> = GameResult(playerOne: "Boris Spassky",
                           playerTwo: "Bobby Fischer",
                           playerOneScore: 8.5,
                           playerTwoScore: 12.5)
chessResult.printWinner()


// Associated Types
//
// associatedtype T means it is left to the conforming class or struct to specify what that type should be. 
protocol ValuePrinting {
   associatedtype T
   var value: T { get }
   func printValue()
}
//Using a String
struct StringPrinter: ValuePrinting {
    let value: String
    
    func printValue() {
        print("My string value is \(value)")
    }
}
// Using a Double
struct DoublePrinter: ValuePrinting {
    let value: Double
    
    func printValue() {
        print("My double value is \(value)")
    }
}
//
//
protocol SummableCollection {
  associatedtype T: AdditiveArithmetic
  var elements: [T] { get }
  var total: T { get }
}
extension SummableCollection {
  var total: T {
    elements.reduce(T.zero, +)
  }
}
struct IntCollection: SummableCollection {
  var name: String
  var elements: [Int]
}
struct DoubleCollection: SummableCollection {
  var name: String
  var elements: [Double]
}
let revenue = DoubleCollection(name: "Monthly Revenue in Thousands", elements: [1.5, 3.2, 1.8])
let homeRuns = IntCollection(name: "Home Runs", elements: [1, 0, 2])
print(revenue.total)
print(homeRuns.total)


// Opaque Types
// allow us to hide the specific data type that is being returned from the caller. 
// The caller doesn’t need to know the exact type being returned in this case, 
// only that the function should return something that conforms to whichever
// if we use an opaque type, all of the underlying types have to be the same.
func getHashbleThing() -> some Hashable {
    return Bool.random() ? "hello" : "goodbye"
}



// REVIEW
// Define and conform to custom protocols
// Conform to protocols in the Swift standard library
// Use protocol inheritance
// Provide default protocol implementation using protocol extensions
// Define generic functions
// Define generic types
// Define generic protocols with associated types
// Write functions that return opaque types



//***
// Tuples

// A data type so use to keep code neat and readable. 
// Importsnt when working with other devs as well as when revisiting old code
// Tuples group together values that are enclosed in parentheses and separated by commas. 
// THEY CAN INCLUDE DIFFERENT YPES OF DATA! (String, Double)

var easyAsPie = ("easy as", 3.14)
var easyAsPie = ("easy as", 3.14)
// access via index
var firstValue = easyAsPie.0   // "easy as"
var secondValue = easyAsPie.1  // 3.14
// access via naming a tuples elements, similar to key: value pairs
var easyAsPie = (saying: "easy as", amount: 3.14)
var firstElementValue = easyAsPie.saying  // "easy as"
var secondElementValue = easyAsPie.amount // 3.14



// For Tuples within Dictionaries. Reference the Tuples portion of the Dictionaries.swift page