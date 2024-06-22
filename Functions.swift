

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

func findAge() -> Int {
  return currentYear - birthYear
}
var age = findAge()
print(age)

let weight = 70.0 // in Kilograms
let height = 1.73 // in Meters
func findBMI() -> Double {
  return weight / (height*height)
}
print(findBMI())


// Parameters and Arguments 
