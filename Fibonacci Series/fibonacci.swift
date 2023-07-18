// Fibonacci Series - Number Theory

class Fibonacci {
    func fibonacciSeries(_ n: Int) -> Int {
    // 0 and 1 generate the same result whereas greater values are computed with the recursive method below
    return n < 2 ? n : (fibonacciSeries(n-1) + fibonacciSeries(n-2))
    }
}

// generating an object of Fibonacci class
var fibonacci = Fibonacci()

// calling the method inside print()
print(fibonacci.fibonacciSeries(7))
