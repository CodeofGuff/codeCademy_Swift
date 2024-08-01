


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
