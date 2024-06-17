


// Loops





// for-in Loops
// used to iterate over a sequence of values such as Strings (a sequence of characters), or ranges (a sequence of numbers)
// use stride() func to choose how we want to iterate over a sequence - stride(from: a, to: b, by: c)

print("Why is 6 afraid of 7? Because ...")
for i in 7...9 {
    print(i)
}
// stride does not include the to: ele. 
for i in stride(from: 0, to: 12, by: 2) {
    print(i)
}
// stride can count backwards
print("We are staring in...")
for i in stride(from: 3, to: 0, by: -1) {
    print(i)
}  
print("BEGIN!")