

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


