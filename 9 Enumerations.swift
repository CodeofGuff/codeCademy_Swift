

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


// Using Associated values wtih enums
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