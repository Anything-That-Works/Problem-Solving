// Century Problem CodeSignal

/*
Given a year, return the century it is in. The first century spans from the year 1 up to and including the year 100,
the second - from the year 101 up to and including the year 200, etc.
*/

func centuryFromYear(year: Int) -> Int {    
    return (year + 99) / 100
}

// Given the string, check if it is a palindrome.

func solution(inputString: String) -> Bool {
    return inputString == String(inputString.reversed())
}

/*
Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.
*/

func solution(inputArray: [Int]) -> Int {
    var output = Int.min
    for i in 0 ..< (inputArray.count - 1 ) {
        if ((inputArray[i] * inputArray[i+1]) > output) {
            output = inputArray[i] * inputArray[i+1]
        }
    }
    return output
}


/*
Below we will define an n-interesting polygon. Your task is to find the area of a polygon for a given n.
*/

func solution(n: Int) -> Int {
 return (n*n) + ((n-1)*(n-1))
}

/*
Ratiorg got statues of different sizes as a present from CodeMaster for his birthday, each statue having 
an non-negative integer size. Since he likes to make things perfect, he wants to arrange them from smallest
to largest so that each statue will be bigger than the previous one exactly by 1. He may need some additional
statues to be able to accomplish that. Help him figure out the minimum number of additional statues needed
*/

func solution(statues: [Int]) -> Int {
    var high = Int.min
    var low = Int.max
    var array = [Int]()
    for i in 0 ..< statues.count {
        if (high < statues[i]){
            high = statues[i]
        }
        if (low > statues[i]) {
            low = statues[i]
        }
    }
    for i in low ... high {
        array.append(i)
    }
    array.removeAll(where: { statues.contains($0) })
    return array.count
}

/*
Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing 
sequence by removing no more than one element from the array.
*/

func solution(sequence: [Int]) -> Bool {
    var removed: Int = 0
    var array = sequence
    for i in 0 ..< array.count - 2 {
        if (removed <= 2) {
        var a = array[i]
        var b = array[i+1]
        var c = array[i+2]
                if (a >= b) {
            removed += 1
            array[i] = b - 1;
        }
        if (b >= c){
            removed += 1

            if (a == c) {
                array[i+2] = b + 1;
            } else {
                array[i+1] = a;
            }
        } 
        }
    } 
    return removed <= 1;
}
