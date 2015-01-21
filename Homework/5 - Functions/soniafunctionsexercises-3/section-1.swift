// Playground - noun: a place where people can play
// Lesson 05

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times

func hello() {
    println("Hello world")
}

for i in 1...10 {
    hello()
}


// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func hit() {
    
    for i in 0...19 {
        println("Hit this line \(i) times.")
    }
}

hit()


// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"

func print(word: String) {
    println("Hello \(word)!")
}

print("Santa")


// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"

func printAgain(word: String?) {
    if word = true {
        println("Hello \(word!)!")
        else println("Hello world!")}
    }

printAgain("Sonia")

printAgain()



// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.

func fib(n: Int) -> Int {
    var fibNum = n, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        
        let tempVar = current
        
        current = next
        next = tempVar + current
        result = tempVar
    }
    
    return result
}


fib(9)


// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.


    // -------- do i need to declare a tempValue in here that would take the return value from each time that the above func is called and add it to the next with +=?


func addFibNumbers(multipleFib: Int) -> Int {
    var multipleFib = 20  //do i need this line??
    for i in 1...multipleFib {
        //call fib()
        let currentFibNum = //result from running fib()
        //then run fib() again for the second number in the range
        //then +=currentFibNum
        //print the last currentFibNum
        
        println(currentFibNum) }
}

addFibNumbers(20)



// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

func numType(number: Int) -> String {


    // -------- i would need to say that if the input number is grater than 0, does not equal 1 or 2 then run a loop. if input number is divisible by 2, 3, 5, 7 or 9 then it's a compound, if not then it's a prime. 1 is neither and 2 is prime. i guess i can set an array with 2, 3, 5, 7 and 9


// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

    // -------- call the above fib function and tell it to run for a range 1...19, then after each run tell it to save the value and input it into the numType function. then print the result in a tuple (fib, numType) after each time
    
    
    

// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).

func totalBillAndTip(billAmount: Double, tip: Double) -> (totalBill: Double, tipAmount: Double) {
    
    //would this be where i set the tip to an optional value? to have the user put in what persentage he/she wants to tip?
    
    var tipAmount = (billAmount * tip)
    var total = billAmount + tip
    return (total, tipAmount)
}
    
    totalBillAndTip(10.5, 0.2)
    
    totalBillAndTip(25.50, 0.15)

    

    // -------- my playground is errored out at the very bottom so nothing actually runs on it =( but i just tested in another playground and it worked!
    
    

// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.

    for character in "Sonia" {
        println(character)
}
    // --------but how do i do it backwards????





// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

    // --------




// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).

    // --------



// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings are equal

    // -------- equal or identical?




// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.

















