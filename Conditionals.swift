

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
// if the same as 
if windy {
    print("ITS BLOWIN!!!")
}
else {
    print("It is not windy!")
}





// Switch Statements
// Used to check the value of a given expression against multiple cases. 
// Does not check for the value of a condition (like an if statement) and instead finds and matches a case to a given expression.

var secretIdentity = "Natasha Romanoff"
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







