/*:
## Exercise - Type Inference and Required Values
 
 Declare a variable called `name` of type `String`, but do not give it a value. Print `name` to the console. Does the code compile? Remove any code that will not compile.
 */
var name: String
// print(name) // This will not compile because `name` is not initialized.
//:  Now assign a value to `name`, and print it to the console.
name = "John"
print(name)
//:  Declare a variable called `distanceTraveled` and set it to 0. Do not give it an explicit type.
var distanceTraveled: Double = 0
// distanceTraveled = 54.3 // This will not compile because `distanceTraveled` was inferred as an Int.
//:  Now assign a value of 54.3 to `distanceTraveled`. Does the code compile? Go back and set an explicit type on `distanceTraveled` so the code will compile.
var distanceTraveledExplicit: Double = 0.0
distanceTraveledExplicit = 54.3
/*:
[Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Percent Completed](@next)
 */
