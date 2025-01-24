/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstDecimal: Double = 3.14
var secondDecimal: Double = 1.61
//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse: Bool = true
print("Error: Cannot assign a Bool value to a Double variable.")
//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var stringValue: String = "Hello"
print("Error: Cannot assign a String value to a Double variable.")
//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var wholeNumber: Int = 42
print("Error: Cannot assign an Int value to a Double variable directly. You need to cast it explicitly.")
/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
