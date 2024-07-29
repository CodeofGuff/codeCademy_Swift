


// Closures
// self-contained chunks of code that are first-class citizens in Swift.

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
