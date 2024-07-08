

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
    case ruth
    case meepa
    case rusty
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
// 