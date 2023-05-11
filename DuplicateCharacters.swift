// Finding if a string contains a duplicate letter or character

// brute force approach - complexity O(n)
func duplicateCharacter(_ input : String) -> Bool{

var usedLetters = [Character]()

for letter in input{
if usedLetters.contains(letter){
return false
}
usedLetters.append(letter)
}

return true
}


// optimized approach using a set
func duplicateLetter(_ input: String) -> Bool {
return Set(input).count == input.count
}

// calling the functions

print(duplicateCharacter("Swift"))

print(duplicateLetter("Tanzila"))
