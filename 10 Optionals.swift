

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


// Nil-Coalexcing Operator 
// 