Intermediate R Programming

Monday, June 20, 2022
9:18 AM

1. Relational Operators
Hi, and welcome to the first video of the Intermediate R course. My name is Filip, I'm a content creator at DataCamp and I will help you master a bunch of new concepts in the R programming language. Next stop on our trip through the wonderful world of R: relational operators!
2. Equality ==
Relational operators, or comparators, are operators which help us see how one R object relates to another. For example, you can check whether two objects are equal. You can do this by using a double equals sign. We can for example see if the logical value TRUE equals the logical value TRUE. Let's try it out in the console: we type TRUE equals equals TRUE. The result of this query is a logical value, in this case TRUE, because TRUE equals TRUE. On the contrary, TRUE == FALSE will give us FALSE. Makes sense, right? Apart from logical variables, we can also check the equality of other types. We can also compare strings and numbers.
3. Inequality !=
  The opposite of the equality operator is the inequality operator, written as an exclamation mark followed by an equals sign. This sentence would read as: "hello" is not equal to "goodbye". Because this statement is correct, R will output TRUE. Naturally, the inequality operator can also be used for numerics, logicals, and of course other R objects as well. See how every time, the result of the equality operator is opposite for the inequality operator.
4. < and >
  Of course, there are also cases where you need more than simply equality and inequality operators. What about checking if an R object is 'less than' or 'greater than' another R object? This will not come as a surprise: you can use the less-than and greater-than sign for this. In the case of numerical values, here is a straightforward example: 3 less than 5 will evaluate to TRUE, while 3 greater than 5 will evaluate to FALSE. For numerics this makes sense, but how would this work for character strings and logical values? Is "Hello" greater than "Goodbye"? Let's find out! Apparently "Hello" greater than "Goodbye" evaluates to TRUE, but why so? It's because R uses the alphabet to sort character strings. Since "H" comes after "G" in the alphabet, "Hello" is considered greater than "Goodbye". How about logical values? Is TRUE less than FALSE? The following query gives us the answer. It appears not; it evaluates to FALSE. That's because under the hood, TRUE corresponds to 1 and FALSE corresponds to 0. And of course 1 is not less than 0, hence the FALSE result.
5. <= and >=
You can also check to see if one R object is greater than or equal to (or less than or equal to) another R object. To do this, you can use the less than sign, or the greater than sign, together with the equals sign. So 5 greater than or equal to 3 as well as 3 greater than or equal to 3 will evaluate to TRUE.
6. Relational Operators & Vectors
You already knew that R is pretty good with vectors. How about R's comparators, can they also handle vectors? Suppose you have recorded the daily number of views your LinkedIn profile had the previous week and stored them in a vector, linkedin. If we want to find out on which days the number of views exceeded 10, we can directly use the greater than sign. For the first, third, sixth and seventh element in the vector, the number of views is greater than 10, so for these elements the result will be TRUE.
7. Relational Operators & Vectors
You can also compare vectors to vectors; suppose you also recorded the number of views your Facebook profile had the previous week and saved them in another vector, facebook. When are the number of Facebook views less than or equal to the number of LinkedIn views? The following expression shows us how to calculate this. Does it make sense? In this case, the comparison is done for every element of the vector, one by one. For example, in the third day, the number of Facebook views is 5 and the number of LinkedIn views is 13. The comparison evaluates to TRUE, as 5 is smaller than or equal to 13.
8. Let's practice!
Just as for vectors, R also knows how to compare other data structures, such as matrices and lists. Head over the interactive exercises and add Relational Operators to your ever growing R skillset!
Equality
The most basic form of comparison is equality. Let's briefly recap its syntax. The following statements all evaluate to TRUE (feel free to try them out in the console).
3 == (2 + 1)
"intermediate" != "r"
TRUE != FALSE
"Rchitect" != "rchitect"
Notice from the last expression that R is case sensitive: "R" is not equal to "r". Keep this in mind when solving the exercises in this chapter!
  Instructions
100 XP
• In the editor on the right, write R code to see if TRUE equals FALSE.
• Likewise, check if -6 * 14 is not equal to 17 - 101.
• Next up: comparison of character strings. Ask R whether the strings "useR" and "user" are equal.
• Finally, find out what happens if you compare logicals to numerics: are TRUE and 1 equal?
  
  
  # Comparison of logicals
  TRUE == FALSE
# Comparison of numerics
-6 * 14 != 17 - 101
# Comparison of character strings
"useR" == "user"
# Compare a logical with a numeric
TRUE == 1

Greater and less than
Apart from equality operators, Filip also introduced the less than and greater than operators: < and >. You can also add an equal sign to express less than or equal to or greater than or equal to, respectively. Have a look at the following R expressions, that all evaluate to FALSE:
  (1 + 2) > 4
"dog" < "Cats"
TRUE <= FALSE
Remember that for string comparison, R determines the greater than relationship based on alphabetical order. Also, keep in mind that TRUE is treated as 1 for arithmetic, and FALSE is treated as 0. Therefore, FALSE < TRUE is TRUE.
Instructions
100 XP
Write R expressions to check whether:
  • -6 * 5 + 2 is greater than or equal to -10 + 1.
• "raining" is less than or equal to "raining dogs".
• TRUE is greater than FALSE.


# Comparison of numerics
-6 * 5 + 2 >= -10 + 1
# Comparison of character strings
"raining" <= "raining dogs"
# Comparison of logicals
TRUE > FALSE

Compare vectors
You are already aware that R is very good with vectors. Without having to change anything about the syntax, R's relational operators also work on vectors.
Let's go back to the example that was started in the video. You want to figure out whether your activity on social media platforms have paid off and decide to look at your results for LinkedIn and Facebook. The sample code in the editor initializes the vectors linkedin and facebook. Each of the vectors contains the number of profile views your LinkedIn and Facebook profiles had over the last seven days.

Instructions
100 XP

Using relational operators, find a logical answer, i.e. TRUE or FALSE, for the following questions:
  • On which days did the number of LinkedIn profile views exceed 15?
  • When was your LinkedIn profile viewed only 5 times or fewer?
  • When was your LinkedIn profile visited more often than your Facebook profile?
  
  # The linkedin and facebook vectors have already been created for you
  linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
# Popular days
linkedin > 15
# Quiet days
linkedin <= 5
# LinkedIn more popular than Facebook
linkedin > facebook
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
# Popular days
linkedin > 15
[1]  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
# Quiet days
linkedin <= 5
[1] FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE
# LinkedIn more popular than Facebook
linkedin > facebook
[1] FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE

Compare matrices
R's ability to deal with different data structures for comparisons does not stop at vectors. Matrices and relational operators also work together seamlessly!
Instead of in vectors (as in the previous exercise), the LinkedIn and Facebook data is now stored in a matrix called views. The first row contains the LinkedIn information; the second row the Facebook information. The original vectors facebook and linkedin are still available as well.
Instructions
100 XP
Using the relational operators you've learned so far, try to discover the following:
  • When were the views exactly equal to 13? Use the views matrix to return a logical matrix.
• For which days were the number of views less than or equal to 14? Again, have R return a logical matrix.


# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
# When does views equal 13?
views == 13
# When is views less than or equal to 14?
views <= 14

1. Logical Operators
You know how to use relational operators in R, awesome! But what if you want to change or combine the results of these comparisons?
  2. Logical Operators
R does this using the AND, the OR, and the NOT operator. Let's have a closer look at each one of them and start with the AND operator.
3. AND operator "&"
The AND operator works just as you would expect. It typically takes two logical values and returns TRUE only if both the logical values are TRUE themselves. This means that TRUE and TRUE evaluates to TRUE, but that FALSE and TRUE, TRUE and FALSE and FALSE and FALSE all evaluate to FALSE. Instead of using logical values, we can of course use the results of comparisons.
4. AND operator "&"
Suppose we have a variable x, equal to 12. To check if this variable is greater than 5 but less than 15, we can use x greater than 5 and x less than 15. As you already learned, the first part will evaluate to TRUE. The second part, will also evaluate to TRUE. So the result of this expression is TRUE. This makes sense, because 12 lies between 5 and 15. However, if x were equal to 17, the expression x greater than 5 & x less than 15 would simplify to TRUE and FALSE. which results in this expression being FALSE.
5. OR operator "|"
The OR operator (|) works similarly, but the difference is that only at least one of the logical values it uses should be equal to TRUE for the entire OR operation to evaluate to TRUE. This means that, TRUE or TRUE equals TRUE, but that also TRUE or FALSE and FALSE or TRUE evaluate to TRUE. When both logicals are FALSE in an OR operation, so in the case of FALSE or FALSE, the result is FALSE. Remember that the OR operation is not an exclusive or operation, so TRUE or TRUE equals TRUE as well.
6. OR operator "|"
Just as for AND operators, we can use comparisons together with the OR operator. Suppose we have a variable y, equal to 4 this time. To see if this variable is less than 5 or greater than 15, we can use this expression. R will first carry out the comparisons, resulting in TRUE or FALSE, which in turn results in TRUE. Now, let's have y equal 14. The expression y less than 5 or y greater than 15 now evaluates to FALSE or FALSE. Neither one of the comparisons are TRUE, so the result is FALSE.
7. NOT operator "!"
There's one last operator I want to talk about here, the NOT operator. The NOT operator, represented by an exclamation mark, simply negates the logical value it's used on. So exclamation mark TRUE evaluates to FALSE, while exclamation mark FALSE evaluates to TRUE. Just as the OR and AND operators, you can use the NOT operator in combination with logical operators. This is not always necessary, however, because this line of code is exactly the same as this one.
8. NOT operator "!"
However, there are cases in R where the NOT operator is really handy. For example, the built-in R function, is (dot) numeric() checks if an R object is a numeric. As an illustration, take is (dot) numeric(5), which evaluates to TRUE, as 5 is a numeric. If we negate this result using the NOT operator, we get false. If, however, we type is (dot) numeric("hello") we get FALSE. Negating this results gives us TRUE.
9. Logical Operators & Vectors
Now, how do logical operators work with vectors and matrices? Well, just as relational operators, they perform the operations element-wise. The and operation on these two vectors, results in a vector with the elements TRUE, FALSE and FALSE. The first elements in both vectors are TRUE, so the first element of the resulting vector contains TRUE. Similarly, for the second elements where TRUE and FALSE result in FALSE, and the third elements, where FALSE and FALSE give FALSE. A similar thing happens with the OR operator: TRUE or TRUE gives TRUE, TRUE or FALSE also gives TRUE, and FALSE or FALSE gives FALSE. The NOT operator also works on every element of the vector: TRUEs are converted to FALSEs, and FALSEs are converted to TRUEs.
10. "&" vs "&&", "|" vs "||"
Now, there's one last thing I want to warn you about. It's about the difference between a single and a double ampersand or vertical bar. In R you can use both the single sign version or the double sign version, but the result of the logical operation you're carrying out can be different. The biggest difference occurs when you use the two types of operations on vectors. As we've seen before, this expression, evaluates to a vector containing TRUE, FALSE and FALSE. However, if we use a double ampersand, we simply get TRUE. That's because the double ampersand operation only examines the first element of each vector. In this case the first elements are TRUE and TRUE, so the expression returns TRUE.
11. "&" vs "&&", "|" vs "||"
You can see similar things happening with the OR operator. The single sign version returns an entire vector. The double sign version returns only the result of the OR operator on the first element of each vector.
12. Let's practice!
  Another difference between a single and a double ampersand or a vertical bar that is less obvious has something to do with control structures, but that's more advanced material. For now, just remember that you have to pay attention when doing logical operations on vectors. You will very likely want to use the single sign versions.

Exercise
& and |
Before you work your way through the next exercises, have a look at the following R expressions. All of them will evaluate to TRUE:
TRUE & TRUE
FALSE | TRUE
5 <= 5 & 2 < 3
3 < 4 | 7 < 6
Watch out: 3 < x < 7 to check if x is between 3 and 7 will not work; you'll need 3 < x & x < 7 for that.
In this exercise, you'll be working with the last variable. This variable equals the last value of the linkedin vector that you've worked with previously. The linkedin vector represents the number of LinkedIn views your profile had in the last seven days, remember? Both the variables linkedin and last have been pre-defined for you.

Instructions

Write R expressions to solve the following questions concerning the variable last:
  • Is last under 5 or above 10?
  • Is last between 15 and 20, excluding 15 but including 20?
  
  
  # The linkedin and last variable are already defined for you
  linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)
# Is last under 5 or above 10?
last < 5 | last > 10
# Is last between 15 (exclusive) and 20 (inclusive)?
15 < last & last < 20

Exercise
& and | (2)
Like relational operators, logical operators work perfectly fine with vectors and matrices.
Both the vectors linkedin and facebook are available again. Also a matrix - views - has been defined; its first and second row correspond to the linkedin and facebook vectors, respectively. Ready for some advanced queries to gain more insights into your social outreach?
  Instructions

• When did LinkedIn views exceed 10 and did Facebook views fail to reach 10 for a particular day? Use the linkedin and facebook vectors.
• When were one or both of your LinkedIn and Facebook profiles visited at least 12 times?
  • When is the views matrix equal to a number between 11 and 14, excluding 11 and including 14?
  
  
  # The social data (linkedin, facebook, views) has been created for you
  # linkedin exceeds 10 but facebook below 10
  linkedin > 10 & facebook < 10
# When were one or both visited at least 12 times?
linkedin >=12 | facebook >=12
# When is views between 11 (exclusive) and 14 (inclusive)?
views >11 & views <=14

Reverse the result: !
  On top of the & and | operators, you also learned about the ! operator, which negates a logical value. To refresh your memory, here are some R expressions that use !. They all evaluate to FALSE:
  !TRUE
!(5 > 3)
!!FALSE
What would the following set of R expressions return?
  x <- 5
y <- 7
!(!(x < 4) & !!!(y > 12))

FALSE

Exercise
Blend it all together
With the things you've learned by now, you're able to solve pretty cool problems.
Instead of recording the number of views for your own LinkedIn profile, suppose you conducted a survey inside the company you're working for. You've asked every employee with a LinkedIn profile how many visits their profile has had over the past seven days. You stored the results in a data frame called li_df. This data frame is available in the workspace; type li_df in the console to check it out.

Instructions

• Select the entire second column, named day2, from the li_df data frame as a vector and assign it to second.
• Use second to create a logical vector, that contains TRUE if the corresponding number of views is strictly greater than 25 or strictly lower than 5 and FALSE otherwise. Store this logical vector as extremes.
• Use sum() on the extremes vector to calculate the number of TRUEs in extremes (i.e. to calculate the number of employees that are either very popular or very low-profile). Simply print this number to the console.

# li_df is pre-loaded in your workspace
# Select the second column, named day2, from li_df: second
second <- li_df$day2
# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- second > 25 | second < 5
# Count the number of TRUEs in extremes
sum(extremes)

1. Conditional Statements
In this chapter, you already learned about relational operators, which tell us how R objects relate, and logical operators, which allow us to combine logical values. Now R also provides a way to use the results of these operators to change the behavior of your own R scripts. Sure enough, I'm talking about the if and else statements here.
2. if statement
Have a look at the recipe for the if statement: The if statement takes a condition; if the condition evaluates to TRUE, the R code associated with the if statement is executed. The condition to check appears inside parentheses, while the R code that has to be executed if the condition is TRUE, follows in curly brackets. Let's have a look at an example. Suppose we have a variable x equal to -3. If this x is smaller than zero, we want R to print out "x is a negative number!". How can we do this using the if statement? We first assign the variable, x and then write the if test. If we run this bit of code, we indeed see that the string "x is a negative number" gets printed out.
3. if statement
However, if we change x to 5, and re-run the code, the condition will be FALSE, the code is not executed, and the printout will not occur.
4. else statement
This brings us to the else statement: this conditional statement does not need an explicit condition; instead, it has to be used together with an if statement. The code associated with an else statement gets executed whenever the condition of the if test is not satisfied. We can extend our recipe by including an else statement as follows. Returning to our example, suppose we want to print out "x is positive or zero", whenever the condition is not met. We can simply add the else statement. If we run the code with x equal to -3, we still get the printout "x is a negative number", because the if condition is TRUE.
5. else statement
However, if we now change x to 5, the text "x is either a positive number or zero" is printed out; the x smaller than zero condition was not satisfied, so R turned to the expression in the else statement.
6. else if statement
There are also cases in which you want to customize your programs even further. Maybe we want yet another printout if x equals exactly 0. How to do this? Well, R also provides the else if statement. Let's first extend the recipe. The else if statement comes in between the if and else statement. To see how R deals with these different conditions and corresponding code blocks, let's first extend our example.
7. else if statement
Say we want R to print out "x is zero" if x equals 0 and to print out "x is a positive number" otherwise. We add the else if, together with a new print statement, and adapt the message we print on the else statement. How does R process this control structure? Let's first go through what happens when x equals -3. In this case, the condition for the if statement evaluates to TRUE, so "x is a negative number" gets printed out, and R ignores the rest of the statements.
8. else if statement
If x equals 0, R will first check the if condition, sees that it is FALSE, and will then head over to the else if condition. This condition, x == 0, evaluates to TRUE, so "x is zero" gets printed to the console, and R ignores the else statement entirely.
9. else if statement
Finally, what happens when x equals 5? Well, the if condition evaluates to FALSE, so does the else if condition, so R executes the else statement, printing "x is a positive number".
10. if, else if, else
Remember that as soon as R stumbles upon a condition that evaluates to TRUE, R executes the corresponding code and then ignores the rest of the control structure. This becomes important if the conditions you list are not mutually exclusive. Have a look at this example, that sees if a number is divisible by 2 or by 3. When x equals 6, the first condition evaluates to TRUE, so R prints out "divisible by 2". Now R exits the control structure and will not look at the rest of the statements. So although the second condition, for the else if part, would evaluate to TRUE, nothing gets printed out.
11. Let's practice!
  Exercise
The if statement
Before diving into some exercises on the if statement, have another look at its syntax:
  if (condition) {
    expr
  }
Remember your vectors with social profile views? Let's look at it from another angle. The medium variable gives information about the social website; the num_views variable denotes the actual number of views that particular medium had on the last day of your recordings. Both variables have been pre-defined for you.
Instructions
100 XP
	• Examine the if statement that prints out "Showing LinkedIn information" if the medium variable equals "LinkedIn".
	• Code an if statement that prints "You are popular!" to the console if the num_views variable exceeds 15.

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14
# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}
# Write the if statement for num_views
if (num_views > 15) {
  print ("You are popular!")
  }
Exercise
Add an else
You can only use an else statement in combination with an if statement. The else statement does not require a condition; its corresponding code is simply run if all of the preceding conditions in the control structure are FALSE. Here's a recipe for its usage:
  if (condition) {
    expr1
  } else {
    expr2
  }
It's important that the else keyword comes on the same line as the closing bracket of the if part!
Both if statements that you coded in the previous exercises are already available to use. It's now up to you to extend them with the appropriate else statements!
  Instructions
100 XP
Add an else statement to both control structures, such that
• "Unknown medium" gets printed out to the console when the if-condition on medium does not hold.
• R prints out "Try to be more visible!" when the if-condition on num_views is not met.

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14
# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print ("Unknown medium")
}
# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print ("Try to be more visible!")
}
Exercise
Customize further: else if
The else if statement allows you to further customize your control structure. You can add as many else if statements as you like. Keep in mind that R ignores the remainder of the control structure once a condition has been found that is TRUE and the corresponding expressions have been executed. Here's an overview of the syntax to freshen your memory:
if (condition1) {
  expr1
} else if (condition2) {
  expr2
} else if (condition3) {
  expr3
} else {
  expr4
}
Again, It's important that the else if keywords comes on the same line as the closing bracket of the previous part of the control construct!
  Instructions
100 XP
Add code to both control structures such that:
  • R prints out "Showing Facebook information" if medium is equal to "Facebook". Remember that R is case sensitive!
  • "Your number of views is average" is printed if num_views is between 15 (inclusive) and 10 (exclusive). Feel free to change the variables medium and num_views to see how the control structure respond. In both cases, the existing code should be extended in the else if statement. No existing code should be modified.

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14
# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  # Add code to print correct string when condition is TRUE
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}
# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}
Exercise
Else if 2.0
You can do anything you want inside if-else constructs. You can even put in another set of conditional statements. Examine the following code chunk:
  if (number < 10) {
    if (number < 5) {
      result <- "extra small"
    } else {
      result <- "small"
    }
  } else if (number < 100) {
    result <- "medium"
  } else {
    result <- "large"
  }
print(result)
Have a look at the following statements:
  1. If number is set to 6, "small" gets printed to the console.
2. If number is set to 100, R prints out "medium".
3. If number is set to 4, "extra small" gets printed out to the console.
4. If number is set to 2500, R will generate an error, as result will not be defined.
Select the option that lists all the true statements.
Instructions
50 XP
Possible Answers
• 2 and 4
• 1 and 4
• 1 and 3
• 2 and 3
Exercise
Take control!
  In this exercise, you will combine everything that you've learned so far: relational operators, logical operators and control constructs. You'll need it all!
  We've pre-defined two values for you: li and fb, denoting the number of profile views your LinkedIn and Facebook profile had on the last day of recordings. Go through the instructions to create R code that generates a 'social media score', sms, based on the values of li and fb.
Instructions
100 XP
Finish the control-flow construct with the following behavior:
	• If both li and fb are 15 or higher, set sms equal to double the sum of li and fb.
	• If both li and fb are strictly below 10, set sms equal to half the sum of li and fb.
	• In all other cases, set sms equal to li + fb.
	• Finally, print the resulting sms variable.

# Variables related to your last day of recordings
li <- 15
fb <- 9
# Code the control-flow construct
if (li > 15 & fb > 9) {
  sms <- 2 * (li + fb)
} else if (li <10 & fb <10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- (li + fb)
}
# Print the resulting sms to the console
sms
While loop

Got It!
1. While loop
In this video I'll be talking about while loops. The while loop is somewhat similar to the if statement because it executes the code inside if the condition is true. However, as opposed to the if statement, the while loop will continue to execute this code over and over again as long as the condition is true.
2. while loop
The syntax of a while loop is pretty similar to the if statement, as you can see here. Let's have a look at a very simple example: we'll simply make R increment a counter until it reaches the value 7, my lucky number. We start by defining the variable ctr, short for counter, and setting it to 1. Let's first set the 'condition' of the while loop, without worrying about the expressions inside it. We want the while loop to execute as long as the ctr variable is less than or equal to 7. For the initial value of ctr equal to 1, the condition will evaluate to TRUE, but also for other values, such as 3, -5 and 7, this condition will be TRUE.
3. while loop
Next up is the expression. What do we want to while loop to do on every run? We want some information on how the while loop is progressing, so we'll throw in a print statement, together with the paste function. If ctr equals 2, for example, this expression will print out "ctr is set to 2". We're not done yet! We still have to add another line of code to inform R that we want to increment the ctr variable on every run
4. while loop
We add ctr assign operator ctr + 1 to the loop code. Let's first try to guess how R will handle this while loop. Before R arrives at the while loop, ctr will be 1. The condition evaluates to TRUE, so the code inside the while loop gets executed.
5. while loop
R will print "ctr is set to 1", and then set ctr to ctr + 1; so ctr now equals 2.
6. while loop
Now, as opposed to the if statement, R takes another look at the condition ctr less than or equal to 7. The current value of ctr is 2 so the condition is TRUE. R executes the code inside again, prints out "ctr is set to 2" and increments the ctr variable. This will go on for ctr equal to 3, 4, 5 and 6. But what happens after ctr is set to 7 on the 6th run?
  7. while loop
R checks the while loop's condition: it's still TRUE, because 7 is less than or equal to 7. R prints out ctr is set to 7 and then increments the ctr.
8. while loop
Now, the condition will be checked once more. But this time ctr will be equal to 8, which is greater than 7, so the condition evaluates to FALSE, forcing R to abandon the while loop.
9. while loop
Curious if our abstract thinking was correct? We'll simply execute the R code and can find out. Indeed, the "ctr is set to" sentences are printed out for numbers 1 to 7. If we now check the value of ctr we see that indeed, ctr is equal to 8. 8 is the first value for ctr for which the condition fails, so R does not increment ctr further.
10. while loop
The line of code to increment ctr is crucial. Suppose we remove this line.
11. Infinite while loop
If we now run this code in R, the line "ctr is set to 1" would be printed indefinitely, until we stop the session manually with Control C. Why? Because ctr does not get updated; this would mean that the condition is always true, and R keeps on re-executing the code in the while loop. You'll have to hit the stop sign in your R console to stop this. What I truly want to say here: always make sure your while loop will end at some point!
  12. break statement
There's one more thing I want to discuss before you get started with the exercises. The break statement. The break statement simply breaks out of the while loop: when R finds it, it abandons the currently active while loop. Suppose we want R to stop our while loop from before as soon as the value of ctr is divisible by 5. We can do this with a break statement. If we now run this piece of code, the sentence is only printed out 4 times, for the ctr values 1 to 4. If we check out the ctr variable, it is equal to 5, because for ctr equal to 5, the condition that checked if ctr was divisible by 5 became TRUE, and the while loop was abandoned.
13. Let's practice!
  Exercise
Write a while loop
Let's get you started with building a while loop from the ground up. Have another look at its recipe:
while (condition) {
  expr
}
Remember that the condition part of this recipe should become FALSE at some point during the execution. Otherwise, the while loop will go on indefinitely.
If your session expires when you run your code, check the body of your while loop carefully.
Have a look at the sample code provided; it initializes the speed variables and already provides a while loop template to get you started.
Instructions
100 XP
Code a while loop with the following characteristics:
	• The condition of the while loop should check if speed is higher than 30.
	• Inside the body of the while loop, print out "Slow down!".
	• Inside the body of the while loop, decrease the speed by 7 units and assign this new value to speed again. This step is crucial; otherwise your while loop will never stop and your session will expire.
If your session expires when you run your code, check the body of your while loop carefully: it's likely that you made a mistake.


# Initialize the speed variable
speed <- 64
# Code the while loop
while (speed > 30) {
  print("Slow down!")
  speed <- speed - 7
}
# Print out the speed variable
speed
Exercise
Throw in more conditionals
In the previous exercise, you simulated the interaction between a driver and a driver's assistant: When the speed was too high, "Slow down!" got printed out to the console, resulting in a decrease of your speed by 7 units.
There are several ways in which you could make your driver's assistant more advanced. For example, the assistant could give you different messages based on your speed or provide you with a current speed at a given moment.
A while loop similar to the one you've coded in the previous exercise is already available for you to use. It prints out your current speed, but there's no code that decreases the speed variable yet, which is pretty dangerous. Can you make the appropriate changes?
  Instructions
100 XP
Instructions
100 XP
• If the speed is greater than 48, have R print out "Slow down big time!", and decrease the speed by 11.
• Otherwise, have R simply print out "Slow down!", and decrease the speed by 6.
If the session keeps timing out and throwing an error, you are probably stuck in an infinite loop! Check the body of your while loop and make sure you are assigning new values to speed.


# Initialize the speed variable
speed <- 64
# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is",speed))
  if (speed >48 ) {
    print ("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  } 
}
Exercise
Stop the while loop: break
There are some very rare situations in which severe speeding is necessary: what if a hurricane is approaching and you have to get away as quickly as possible? You don't want the driver's assistant sending you speeding notifications in that scenario, right?
  This seems like a great opportunity to include the break statement in the while loop you've been working on. Remember that the break statement is a control statement. When R encounters it, the while loop is abandoned completely.

Instructions
100 XP
Adapt the while loop such that it is abandoned when the speed of the vehicle is greater than 80. This time, the speed variable has been initialized to 88; keep it that way.


# Initialize the speed variable
speed <- 88
while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if (speed >80 ) {
   break 
  }
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

Build a while loop from scratch
The previous exercises guided you through developing a pretty advanced while loop, containing a break statement and different messages and updates as determined by control flow constructs. If you manage to solve this comprehensive exercise using a while loop, you're totally ready for the next topic: the for loop.
Instructions
100 XP
Finish the while loop so that it:
  • prints out the triple of i, so 3 * i, at each run.
• is abandoned with a break if the triple of i is divisible by 8, but still prints out this triple before breaking.


# Initialize i as 1 
i <- 1
# Code the while loop
while (i <= 10) {
  print(x<- 3 * i)
  if ((i*3) %% 8 ==0) {
    break
  }
  i <- i + 1
}


Got It!
  1. For loop
The for loop is somewhat different from the while loop. Have a look at this 'recipe'.
2. for loop
This can be read as: for each var, a variable, in seq, a sequence, execute expressions. Makes sense? Let's see how this actually works with an example. Suppose you have a vector, cities, containing the names of a number of cities. We can simply print the cities vector to the console. But suppose we want to have a different printout for every element in the vector. We can accomplish this using a for loop.
3. for loop
Let's start from the recipe and convert it to a functional for loop step by step.
4. for loop
Inside the parentheses, we write 'city in cities', meaning that we want to execute the code in the expression block for every city in the cities vector.
5. for loop
We'll simply replace the expression by a simple print statement for starters. How does R handle this code? At the start of the loop, R evaluates the seq element, being cities in our case. It realizes that it is a vector containing 6 elements. Next, R stores the first element of this sequence in the variable city, so city equals "New York" now.
6. for loop
Then, the expression, print(city), is executed, printing out "New York" to the console.
7. for loop
After the execution, R stores the second element of the cities vector, "Paris", in city and re-runs the code. This process repeats itself until all cities in the cities vector are iterated over.
8. for loop
The final result looks like this: for each city, a separate printout was done.
9. for loop over list
The for loop does not only work on vectors: it also works with lists for example. Suppose that the cities vector is a list instead of a vector: The exact same for loop as we've been using before can be used for lists, and the result is exactly the same. So there's no need to worry about the difference between subsetting vectors and lists, because the for loop does this for us. I would encourage you to try the for loop with different data structures as well, such as matrices and data frames. I won't go into detail on these in this video. Instead, I want to talk about two control statements for loops. The first one is break, and the second one is next.
10. break statement
The break statement is a statement that you already know: just like in the while loop, break in a for loop simply stops the execution of the code and abandons the for loop altogether. Suppose we want to leave the for loop as soon as we encounter a city that consists of 6 characters. We can use the nchar function, which stands for number of characters, inside an if statement for this: How will R deal with this code? Well, for the first city in the cities vector, "New York", the nchar condition is false, so the "New York" still gets printed to the console. The same happens for "Paris". But in the third iteration, when city is equal to "London", the nchar condition is TRUE, causing the for loop to break. Since the break construct comes before the print command, the character string "London" is not printed to the console anymore.
11. break statement
If we run the code, we see that indeed, only "New York" and "Paris" get printed to the console, after which the for loop is abandoned.
12. next statement
The next statement also alters the flow of your for loop, but does so in a slightly different way. Let's see what happens if we change the break statement by the next statement and execute the entire loop again. All city names except for "London" get printed to the console. How could this happen? Because the next statement skips the remainder of the code inside the for loop and proceeds to the next iteration. So as soon as next is encountered, the print(city) part is not processed and the for loop is continued. Of course it is perfectly possible to use both break and next in the for loop.
13. for loop: v2
Before you can have some more looping fun in the exercises, I want to talk about another way we can loop over different data structures. Let's retake the basic for loop that prints the city names that are stored in a vector. Suppose that instead of simply printing out the city's name, we also want to give information on the city's position inside the vector. We can't use this construct, given that we don't have access to the so-called looping index. This index is a counter that R uses behind the scenes to know which element to select on every iteration. In the first iteration, the looping index is 1, and the first element of the cities vector is selected. But what if we want to use this looping vector ourselves? There's no way for us to access it. Fortunately, we can easily solve this. Instead of iterating over the cities, we can manually create a looping index ourselves. Let's start with changing the looping details.
14. for loop: v2
Now, we let i progress from 1 to length of the cities vector, which is 6, by steps of 1. Remember that 1 colon 6 is a compact way of coding the a vector containing the elements 1, 2, 3, 4, 5 and 6. By using a manual looping index, we lose our city variable, so we have to change the contents of the for loop as well.
15. for loop: v2
We now do the subsetting of the vector explicitly, using square brackets. The result is exactly the same as before. This might seem a bit more work, but we now gain access to the index as well.
16. for loop: v2
Adding some more information is easier now.
17. for loop: wrap-up
I can imagine that you're wondering, "Which one of the two is best?" It depends. The first one, the city in cities version, is typically more concise and easier to read, but does not give access to all looping information. The version with the explicit looping index takes more thought to write, but gives you all the information you need.
18. Let's practice!
  
  Exercise
Loop over a vector
In the previous video, Filip told you about two different strategies for using the for loop. To refresh your memory, consider the following loops that are equivalent in R:
  primes <- c(2, 3, 5, 7, 11, 13)
# loop version 1
for (p in primes) {
  print(p)
}
# loop version 2
for (i in 1:length(primes)) {
  print(primes[i])
}
Remember our linkedin vector? It's a vector that contains the number of views your LinkedIn profile had in the last seven days. The linkedin vector has been pre-defined so that you can fully focus on the instructions!

Instructions
100 XP
Write a for loop that iterates over all the elements of linkedin and prints out every element separately. Do this in two ways: using the loop version 1 and the loop version 2 in the example code above.


# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
# Loop version 1
for (l in linkedin) { 
    print(l)
}
# Loop version 2
for (l in 1:length(linkedin)) {
    print(linkedin[l])
}
Exercise
Loop over a list
Looping over a list is just as easy and convenient as looping over a vector. There are again two different approaches here:
primes_list <- list(2, 3, 5, 7, 11, 13)
# loop version 1
for (p in primes_list) {
  print(p)
}
# loop version 2
for (i in 1:length(primes_list)) {
  print(primes_list[[i]])
}
Notice that you need double square brackets - [[ ]] - to select the list elements in loop version 2.
Suppose you have a list of all sorts of information on New York City: its population size, the names of the boroughs, and whether it is the capital of the United States. We've already defined a list nyc containing this information (source: Wikipedia).

Instructions
100 XP
As in the previous exercise, loop over the nyc list in two different ways to print its elements:
  • Loop directly over the nyc list (loop version 1).
• Define a looping index and do subsetting using double brackets (loop version 2).

# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)
# Loop version 1
for (n in nyc) {
  print(n)
}
# Loop version 2
for (n in 1:length(nyc)) {
  print(nyc[[n]])
}
Exercise
Loop over a matrix
In your workspace, there's a matrix ttt, that represents the status of a tic-tac-toe game. It contains the values "X", "O" and "NA". Print out ttt to get a closer look. On row 1 and column 1, there's "O", while on row 3 and column 2 there's "NA".
To solve this exercise, you'll need a for loop inside a for loop, often called a nested loop. Doing this in R is a breeze! Simply use the following recipe:
  for (var1 in seq1) {
    for (var2 in seq2) {
      expr
    }
  }

Instructions
100 XP

Finish the nested for loops to go over the elements in ttt:
  • The outer loop should loop over the rows, with loop index i (use 1:nrow(ttt)).
• The inner loop should loop over the columns, with loop index j (use 1:ncol(ttt)).
• Inside the inner loop, make use of print() and paste() to print out information in the following format: "On row i and column j the board contains x", where x is the value on that position.

# The tic-tac-toe matrix ttt has already been defined for you
# define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
  }
}
Exercise
Mix it up with control flow
Let's return to the LinkedIn profile views data, stored in a vector linkedin. In the first exercise on for loops you already did a simple printout of each element in this vector. A little more in-depth interpretation of this data wouldn't hurt, right? Time to throw in some conditionals! As with the while loop, you can use the if and else statements inside the for loop.

Instructions
100 XP
Add code to the for loop that loops over the elements of the linkedin vector:
  • If the vector element's value exceeds 10, print out "You're popular!".
	• If the vector element's value does not exceed 10, print out "Be more visible!"


# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
# Code the for loop with conditionals
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}

Exercise
Next, you break it
A possible solution to the previous exercise has been provided for you. The code loops over the linkedin vector and prints out different messages depending on the values of li.
In this exercise, you will use the break and next statements:
	• The break statement abandons the active loop: the remaining code in the loop is skipped and the loop is not iterated over anymore.
	• The next statement skips the remainder of the code in the loop, but continues the iteration.

Instructions

100 XP
Extend the for loop with two new, separate if tests as follows:
	• If the vector element's value exceeds 16, print out "This is ridiculous, I'm outta here!" and have R abandon the for loop (break).
• If the value is lower than 5, print out "This is too embarrassing!" and fast-forward to the next iteration (next).

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
# Adapt/extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  # Add if statement with break
  if (li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  }
  
  # Add if statement with next
  if (li < 5) {
    print("This is too embarrassing!")
    next
  }
  
  print(li)
}
Exercise
Build a for loop from scratch
This exercise will not introduce any new concepts on for loops.
We already went ahead and defined a variable rquote. This variable has been split up into a vector that contains separate letters and has been stored in a vector chars with the strsplit() function.
Can you write code that counts the number of r's that come before the first u in rquote?

Instructions
100 XP
	• Initialize the variable rcount, as 0.
	• Finish the for loop:
	• if char equals "r", increase the value of rcount by 1.
	• if char equals "u", leave the for loop entirely with a break.
	• Finally, print out the variable rcount to the console to see if your code is correct.


# Pre-defined variables
rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]
# Initialize rcount
rcount <- 0

# Finish the for loop
for (char in chars) {
  if (char == "r") {
    rcount <- rcount + 1
  }
  if (char == "u") {
    break
  }
}
# Print out rcount
rcount

Got It!
1. Introduction to Functions
In this chapter we'll have a closer look at a very powerful concept in R
2. Functions
functions. Not surprisingly, you've already used functions before. Remember the time you created a list? You used the list() function. Or the time you wanted to display the contents of a variable? You used the print() function. But what are functions and how do they work?
3. Black box principle
You can think of a function as some kind of black box.
4. Black box principle
You give an input to the black box
5. Black box principle
the black box processes this input and it returns some output
6. Black box principle
Let's have a look at this black-box principle with a specific example.
7. Black box principle
The R sd function calculates the standard deviation of a vector. Our black box in this case is the sd function.
8. Black box principle
If you give the sd function a vector containing 1, 5, 6 and 7 as an input
9. Black box principle
the number 2 point 63, the standard deviation of these 4 values, will be your output.
10. Call function in R
How can you use the function sd in R? You already know how! Simply type sd followed by parentheses. Inside the parentheses, you specify the so called function arguments. These are the inputs to your functions. In our case, we have a single argument, the vector containing four values. We could just as well assign the input vector to a variable, say the variable values, and then call sd on values. In both cases, the value 2 point 63 gets printed to the console. That's because we did not assign the result of the function to a variable. If you want to reuse the result of the function, simply use the assignment operator as you did before so many times. Let's assign the output of our function to a variable my_sd. If we now print my_sd to the console, we see that it contains 2 point 63.
11. Function documentation
Here I assumed that everybody knows how to use the sd() function. For the sd() you can guess that you have to input a vector, but there are many functions out there for which the usage is less straightforward. For information on what a function does and how it should be used, you can look up the documentation of the R function using the help function. For example, for the sd function, we type help(sd), or question mark sd. These are equivalent. If you are working in DataCamp, these commands will guide you to RDocumentation. If you're working locally, a documentation page will pop up. Both contain the same information. Function documentation presents a lot of information. If we have a look at the "Usage" section, we see that the sd function actually takes two arguments, x and na (dot) rm. A strange thing here is that na (dot) rm is followed by an equals sign and FALSE, while x is not.
12. Questions
Well, this is a bummer. Asking for help on the sd function only gave us more questions. First off, the first argument is called x, but we didn't specify it anywhere when calling sd on the values variable. How did R know what we meant? Second, what's up with this = FALSE for the na (dot) rm argument? And finally, how come sd(values) worked fine although sd seems to need two arguments? Do not despair, all of these question will be solved in a moment!
13. Argument matching
When you call an R function, R has to match your input values to the function's arguments. To put it differently, R has to know that by values you mean the argument x of the sd() function. This is because R matched the values to the x argument by position. values is the first element inside the parentheses, so R knows that you mean the first argument of the sd() function, which is x. However, it doesn't have to be this way. It would be perfectly equivalent to match the arguments by name, by specifically saying that we want the x argument to be values. We can do this by using the equal sign. The result is exactly the same.
14. na.rm argument
Now what's up with this na (dot) rm argument? The documentation shows that na (dot) rm is a logical value, indicating whether or not missing values should be removed. Let's experiment with this first, by adding an NA to the values vector and calling the sd() function once more with the values argument. The result is simply NA, as the sd function did not remove the missing values before calculating the standard deviation. This is because by default, the na (dot) rm is FALSE, causing sd to not remove the missing values. That's exactly what the Usage section of sd's documentation tells us: na (dot) rm is FALSE indicates that by default NA's will not be removed. So if you do not specify the na (dot) rm argument, na (dot) rm will be set to FALSE. For the case where the values vector contains a missing value, an NA, we'll want to set the na (dot) rm to TRUE. The sd function will then remove missing values before calculating the actual standard deviation. We can do this by letting R match the arguments by position. R knows that we want to set the x argument to values and the na (dot) rm argument to TRUE because of the order in which we set the function's input. Matching by name is also possible. We explicitly say that the na (dot) rm argument must be TRUE. Notice from this last expression that R knows how to handle a mix of matching by position and by name: the first argument was matched by position, while the second one was matched by name.
15. sd(values) works?
This also solves our third question: sd(values) does not throw any errors although we didn't define the na dot rm argument: R sees that we haven't specified it, so it takes the default value. However, If we had decided to leave the x argument unspecified, for example by simply calling sd() without arguments: We will get an error: argument x is missing, with no default. Remember from the Usage section of the documentation that x did not have a default value, while na (dot) rm did. This tells us that function arguments for which no default is specified, have to be specified by the user of the function, otherwise an error is likely to occur.
16. Useful trick
Before wrapping up this introduction of functions, I want to point you to a very useful function, the args() function. This is a function to learn about the arguments of a function without having to read through the entire documentation. For the sd() function, we can use args(sd). The output tells us that the first argument, x, has no default arguments, while na (dot) rm, the second argument, is FALSE by default.
17. Wrap-up
Functions may be a daunting concept at first, but knowing all about them is important to get a good understanding of R in general. R functions are used literally all the time. Let us recap on three key ideas. First of all, functions work like a type of black box: you give some values as an input, the function processes this input and generates an output. Next, R matches function arguments by position or by name, and finally, some function arguments can have a default value, which can be overridden. If you do not specify the value of an argument that has no default, typically an error will occur.
18. Let's practice!

Exercise
Function documentation
Before even thinking of using an R function, you should clarify which arguments it expects. All the relevant details such as a description, usage, and arguments can be found in the documentation. To consult the documentation on the sample() function, for example, you can use one of following R commands:
help(sample)
?sample
If you execute these commands, you'll be redirected to www.rdocumentation.org.
A quick hack to see the arguments of the sample() function is the args() function. Try it out in the console:
args(sample)
In the next exercises, you'll be learning how to use the mean() function with increasing complexity. The first thing you'll have to do is get acquainted with the mean() function.
Instructions
100 XP
	• Consult the documentation on the mean() function: ?mean or help(mean).
	• Inspect the arguments of the mean() function using the args() function.

# Consult the documentation on the mean() function
help(mean)
# Inspect the arguments of the mean() function
args(mean)

Exercise
Use a function
The documentation on the mean() function gives us quite some information:
	• The mean() function computes the arithmetic mean.
	• The most general method takes multiple arguments: x and ....
	• The x argument should be a vector containing numeric, logical or time-related information.
Remember that R can match arguments both by position and by name. Can you still remember the difference? You'll find out in this exercise!
Once more, you'll be working with the view counts of your social network profiles for the past 7 days. These are stored in the linkedin and facebook vectors and have already been created for you.

Instructions
100 XP
	• Calculate the average number of views for both linkedin and facebook and assign the result to avg_li and avg_fb, respectively. Experiment with different types of argument matching!
	• Print out both avg_li and avg_fb.


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)
# Inspect avg_li and avg_fb
avg_fb
avg_li


Exercise
Use a function (2)
Check the documentation on the mean() function again:
?mean
The Usage section of the documentation includes two versions of the mean() function. The first usage,
mean(x, ...)
is the most general usage of the mean function. The 'Default S3 method', however, is:
mean(x, trim = 0, na.rm = FALSE, ...)
The ... is called the ellipsis. It is a way for R to pass arguments along without the function having to name them explicitly. The ellipsis will be treated in more detail in future courses.
For the remainder of this exercise, just work with the second usage of the mean function. Notice that both trim and na.rm have default values. This makes them optional arguments.

Instructions
100 XP
	• Calculate the mean of the element-wise sum of linkedin and facebook and store the result in a variable avg_sum.
	• Calculate the mean once more, but this time set the trim argument equal to 0.2 and assign the result to avg_sum_trimmed.
	• Print out both avg_sum and avg_sum_trimmed; can you spot the difference?


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)
# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(linkedin + facebook, trim = 0.2)
# Inspect both new variables
avg_sum
avg_sum_trimmed

Exercise
Use a function (3)
In the video, Filip guided you through the example of specifying arguments of the sd() function. The sd() function has an optional argument, na.rm that specified whether or not to remove missing values from the input vector before calculating the standard deviation.
If you've had a good look at the documentation, you'll know by now that the mean() function also has this argument, na.rm, and it does the exact same thing. By default, it is set to FALSE, as the Usage of the default S3 method shows:
mean(x, trim = 0, na.rm = FALSE, ...)
Let's see what happens if your vectors linkedin and facebook contain missing values (NA).

Instructions
100 XP
	• Calculate the average number of LinkedIn profile views, without specifying any optional arguments. Simply print the result to the console.
	• Calculate the average number of LinkedIn profile views, but this time tell R to strip missing values from the input vector.


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)
# Basic average of linkedin
avg_linkedin <- mean(linkedin)
# Advanced average of linkedin
adv_avg_linkedin <- mean(linkedin, trim = 0, na.rm= TRUE)

Functions inside functions
You already know that R functions return objects that you can then use somewhere else. This makes it easy to use functions inside functions, as you've seen before:
speed <- 31
print(paste("Your speed is", speed))
Notice that both the print() and paste() functions use the ellipsis - ... - as an argument. Can you figure out how they're used?

Instructions
100 XP
Use abs() on linkedin - facebook to get the absolute differences between the daily LinkedIn and Facebook profile views. Place the call to abs() inside mean() to calculate the Mean Absolute Deviation. In the mean() call, make sure to specify na.rm to treat missing values correctly!

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)
# Calculate the mean absolute deviation
mean_abs_dev <- mean(abs(linkedin - facebook), na.rm= TRUE)
# print mean_abs_dev
mean_abs_dev

Exercise
Required, or optional?
By now, you will probably have a good understanding of the difference between required and optional arguments. Let's refresh this difference by having one last look at the mean() function:
mean(x, trim = 0, na.rm = FALSE, ...)
x is required; if you do not specify it, R will throw an error. trim and na.rm are optional arguments: they have a default value which is used if the arguments are not explicitly specified.
Which of the following statements about the read.table() function are true?
	1. header, sep and quote are all optional arguments.
	2. row.names and fileEncoding don't have default values.
	3. read.table("myfile.txt", "-", TRUE) will throw an error.
	4. read.table("myfile.txt", sep = "-", header = TRUE) will throw an error.
	
Instructions
50 XP

Possible Answers
• (1) and (3)
• (2) and (4)
• (1), (2), and (3)
• (1), (2), and (4)


1. Writing Functions
You now know about different ways to use R functions, but this is not the end. You can also write your own R functions.
2. When write your own?
You might wonder when you would want to do this. Well, this is mostly a question of experience, but there are some guidelines. A function typically serves a particular need or solves a particular problem, without having to care about how the function does this. Remember the 'black-box principle' I mentioned before? If you're writing your own functions, you are writing your own black box that takes inputs and generates an output. How the black box goes about solving its task is not important once you've written the function. You want to be able to use this function just as if it was a standard R function, such as mean(), sd() or list(). You don't know how these work under the hood either, do you?
3. The triple() function
Writing your own functions is super simple as soon as you know the syntax. Let's define a function that calculates the triple of its input, called triple. In a black-box manner, it would look like this: a numeric goes in, the triple function does its magic, and the triple of the numeric comes out.
4. The triple() function
How does this look in R code? You use the function construct for this. This function recipe reads itself as: create a new function, my_fun, that takes arg1 and arg2 as arguments and performs the code in the body on these arguments, eventually generating an output.
5. The triple() function
In our case, we want our function to be called triple, so let's go ahead and take that step. Next, we also know that our triple function will have a single input, a number.
6. The triple() function
We replace the arg1, arg2 part by a single argument, named x. We're almost there. What do we want the body, the function's actual code, to be?
7. The triple() function
To calculate the triple of x, we simply put 3*x.
8. The triple() function
If we execute this function definition, a new object gets defined in our workspace, triple. Now, let's go ahead and calculate the triple of 6. Just like we did before with R's built-in functions, we use standard parentheses. If we call triple(6), R figures out that the x argument corresponds to the value 6. Next, the function's body is executed, calculating 3 times 6. The result is 18. How does R know that it has to return this value? That's because the last expression evaluated in an R function becomes the return value.
9. return()
You can also explicitly specify the return value, by using the return statement. Let's change the function body to use a intermediary value y. Inside the function, we assign to y the triple of x and next, we return this value y. If we source this function, and call the triple function on the variable 6, we get the exact same result, 18. Using a return at the end of your function body is not always useful, but there are other cases where the return statement will come in handy. We'll learn about them in a bit.
10. The math_magic() function
Let's try something different now. Suppose we want to write a function, called math_magic, that takes two numbers as inputs, and calculates the sum of the product and the division of both numbers.
11. The math_magic() function
So if we put in 4 and 2
12. The math_magic() function
we want it to return (4 times 2) plus (4 divided by 2), which is 10.
13. The math_magic() function
Let's start over from our function recipe.
14. The math_magic() function
We replace my_fun by math_magic
15. The math_magic() function
and change the arguments of the function to have two inputs, a and b. By the way, I'm just choosing these two argument names, but you can choose other names as well, as long as they are consistent with the function body
16. The math_magic() function
Finally, we modify the body. We don't need to include a return statement. Sourcing this function and calling it on the numbers 4 and 2 gives us the result we expect. Great! Let's experiment some more. What happens if we call math_magic with only one argument? We get an error because the argument b is missing with no default. We could solve this by making the second argument of the math_magic function optional.
17. Optional argument
We do this by adding default value, say, 1, to the argument list of the function using the equals sign. Sourcing the function definition again and calling math_magic(4) now, gives us 8. Because the b argument was not specified, R set b to 1 inside the function, so 4 times 1 plus 4 divided by 1 was computed, resulting in 8. Let's now call the math_magic function with the numbers 4 and 0. The result is Inf, R's way of saying infinity. That's because R divided 4 by 0 in the second part of the calculation, which leads to infinity. Suppose we want to guard our function against this misuse of the math_magic function, by having the function return 0 when the b argument is 0.
18. Use return()
We can simply extend our function with an if-test with a return statement inside. If we now call the math_magic function with the second argument equal to 0, the condition for the if-test is true and we simply return zero. The return statement, similar to the break statement in a for and while loop, returns 0 and the rest of the function body is ignored. The a times b plus a divided by b part of the function is never reached in this case. Using the return statement, which proves to be quite useful here, we can halt the execution virtually anywhere we want.
19. Let's practice!
I guess those were my 2 cents on writing functions. Time to get your own R functions rolling!

Exercise
Write your own function
Wow, things are getting serious… you're about to write your own function! Before you have a go at it, have a look at the following function template:
my_fun <- function(arg1, arg2) {
  body
}
Notice that this recipe uses the assignment operator (<-) just as if you were assigning a vector to a variable for example. This is not a coincidence. Creating a function in R basically is the assignment of a function object to a variable! In the recipe above, you're creating a new R variable my_fun, that becomes available in the workspace as soon as you execute the definition. From then on, you can use the my_fun as a function.

Instructions
100 XP
	• Create a function pow_two(): it takes one argument and returns that number squared (that number times itself).
	• Call this newly defined function with 12 as input.
	• Next, create a function sum_abs(), that takes two arguments and returns the sum of the absolute values of both arguments.
	• Finally, call the function sum_abs() with arguments -2 and 3 afterwards.

# Create a function pow_two()
pow_two <- function(x) {
  x ^ 2
}
# Use the function
pow_two(12)
# Create a function sum_abs()
sum_abs <- function(x, y) {
  abs(x) + abs(y)
}
# Use the function
sum_abs(-2, 3)

Exercise
Write your own function (2)
There are situations in which your function does not require an input. Let's say you want to write a function that gives us the random outcome of throwing a fair die:
throw_die <- function() {
  number <- sample(1:6, size = 1)
  number
}
throw_die()
Up to you to code a function that doesn't take any arguments!

Instructions
100 XP
	• Define a function, hello(). It prints out "Hi there!" and returns TRUE. It has no arguments.
	• Call the function hello(), without specifying arguments of course.


# Define the function hello()
hello <- function() {
  print("Hi there!")
  TRUE
}
# Call the function hello()
hello()

Exercise
Write your own function (3)
Do you still remember the difference between an argument with and without default values? The usage section in the sd() documentation shows the following information:
sd(x, na.rm = FALSE)
This tells us that x has to be defined for the sd() function to be called correctly, however, na.rm already has a default value. Not specifying this argument won't cause an error.
You can define default argument values in your own R functions as well. You can use the following recipe to do so:
my_fun <- function(arg1, arg2 = val2) {
  body
}
The editor on the right already includes an extended version of the pow_two() function from before. Can you finish it?

Instructions
100 XP
	• Add an optional argument, named print_info, that is TRUE by default.
	• Wrap an if construct around the print() function: this function should only be executed if print_info is TRUE.
	• Feel free to experiment with the pow_two() function you've just coded.

# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  if (print_info) {
    print(paste(x, "to the power two equals", y))
  }
  return(y)
}
# Some calls of the pow_two() function
pow_two(5)
pow_two(5, FALSE)
pow_two(5, TRUE)







