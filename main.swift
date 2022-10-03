var words = [String]()

var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!.lowercased())
    line = readLine()
}

// Add your code below:
func swap(words:inout [String], firstIndex: Int, secondIndex: Int) {
    let word1 = words[firstIndex]
    let word2 = words[secondIndex]

    words[firstIndex] = word2
    words[secondIndex] = word1
}

//var pass = 1
var swaps = 0
//var totalSwaps = 0

//print("Pass: 0, Swaps: 0/0, Array: \(ints)")
repeat {
    swaps = 0
    for index in 1 ..< words.count {
        while words[index-1] > words[index] {
            swap(words:&words, firstIndex:index-1, secondIndex:index)
            swaps += 1
        }
    }
    //totalSwaps += swaps
    //print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(ints)")
    //pass += 1
} while swaps != 0

for word in words {
    print(word)
}
