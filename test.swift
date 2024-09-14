


var websites: [String] = []

while websites.count < 1000 {
    websites.append("codewars")
}
print(websites)



func greet() -> String {
  return "hello world!"
}




var text = ["h", "e", "l", "l", "o"]
var reversed = [String]()
var counter = text.count - 1

while counter >= 0 {
  reversed.append(text[counter])
  counter -= 1
}

if text == reversed {
  print("We have a palindrome!")
} else {
  print("No palindrome!")
}

