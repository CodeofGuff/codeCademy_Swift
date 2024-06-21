

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





