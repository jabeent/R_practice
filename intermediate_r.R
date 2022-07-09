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


July 02, 2022

Function scoping

An issue that Filip did not discuss in the video is function scoping. It implies that variables that are defined inside a function are not accessible outside that function. Try running the following code and see if you understand the results:

pow_two <- function(x) {
  y <- x ^ 2
  return(y)
}
pow_two(4)
y
x
y was defined inside the pow_two() function and therefore it is not accessible outside of that function. This is also true for the function's arguments of course - x in this case.

Which statement is correct about the following chunk of code? The function two_dice() is already available in the workspace.

two_dice <- function() {
  possibilities <- 1:6
  dice1 <- sample(possibilities, size = 1)
  dice2 <- sample(possibilities, size = 1)
  dice1 + dice2
}
Instructions

Possible Answers

Executing two_dice() causes an error.

Executing res <- two_dice() makes the contents of dice1 and dice2 available outside the function.

Whatever the way of calling the two_dice() function, R won't have access to dice1 and dice2 outside the function.(Possible right answer)

Exercise

R passes arguments by value
The title gives it away already: R passes arguments by value. What does this mean? Simply put, it means that an R function cannot change the variable that you input to that function. Let's look at a simple example (try it in the console):

triple <- function(x) {
  x <- 3*x
  x
}
a <- 5
triple(a)
a
Inside the triple() function, the argument x gets overwritten with its value times three. Afterwards this new x is returned. If you call this function with a variable a set equal to 5, you obtain 15. But did the value of a change? If R were to pass a to triple() by reference, the override of the x inside the function would ripple through to the variable a, outside the function. However, R passes by value, so the R objects you pass to a function can never change unless you do an explicit assignment. a remains equal to 5, even after calling triple(a).

Can you tell which one of the following statements is false about the following piece of code?

increment <- function(x, inc = 1) {
  x <- x + inc
  x
}
count <- 5
a <- increment(count, 2)
b <- increment(count)
count <- increment(count, 2)

Instructions

Possible Answers

a and b equal 7 and 6 respectively after executing this code block.

After the first call of increment(), where a is defined, a equals 7 and count equals 5.

In the end, count will equal 10.(this is the possible answer)

In the last expression, the value of count was actually changed because of the explicit assignment.


Exercise

R you functional?
Now that you've acquired some skills in defining functions with different types of arguments and return values, you should try to create more advanced functions. As you've noticed in the previous exercises, it's perfectly possible to add control-flow constructs, loops and even other functions to your function body.

Remember our social media example? The vectors linkedin and facebook are already defined in the workspace so you can get your hands dirty straight away. As a first step, you will be writing a function that can interpret a single value of this vector. In the next exercise, you will write another function that can handle an entire vector at once.

Instructions

Finish the function definition for interpret(), that interprets the number of profile views on a single day:
The function takes one argument, num_views.
If num_views is greater than 15, the function prints out "You're popular!" to the console and returns num_views.
Else, the function prints out "Try to be more visible!" and returns 0.
Finally, call the interpret() function twice: on the first value of the linkedin vector and on the second element of the facebook vector.

# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Call the interpret function twice
interpret(linkedin[1])
interpret(facebook[2])

Exercise

R you functional? (2)
A possible implementation of the interpret() function has been provided for you. In this exercise you'll be writing another function that will use the interpret() function to interpret all the data from your daily profile views inside a vector. Furthermore, your function will return the sum of views on popular days, if asked for. A for loop is ideal for iterating over all the vector elements. The ability to return the sum of views on popular days is something you can code through a function argument with a default value.

Instructions

Finish the template for the interpret_all() function:

Make return_sum an optional argument, that is TRUE by default.
Inside the for loop, iterate over all views: on every iteration, add the result of interpret(v) to count. Remember that interpret(v) returns v for popular days, and 0 otherwise. At the same time, interpret(v) will also do some printouts.
Finish the if construct:
If return_sum is TRUE, return count.
Else, return NULL.
Call this newly defined function on both linkedin and facebook.

Code: 

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum = TRUE) {
  count <- 0

  for (v in views) {
    count <- count + interpret(v)
  }

  if (return_sum) {
    return(count)
  } else {
    return(NULL)
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)

1. R Packages
Because you've learned so much in this chapter by now, let us do a brief recap. First, you've learned about the different ways to use R's built-in functions. Next, you took full control by actually creating your own R functions. You can use these newly defined functions just as we use R's built-in functions like mean, list and sample, just to name a few.

2. R Packages
But, wait? How come these functions are 'built in'? These functions are not in my workspace, so how on earth does R know where to find these functions mean, list and sample? Well, all of these built-in functions are part of R packages that are loaded in your R session. R packages are bundles of code, data, documentation, and tests that are easy to share with others. For example, the mean, list and sample functions are all part of the base package, which contains the basic functionality to use R. Another example package, specifically for data visualization, is the ggvis package. It contains functions such as layer_points, scale_nominal and add_axis.

3. Install packages
Before you can use a package, you will first have to install it. The base package is automatically installed when you install R. The ggvis package on the other hand won't come with the bundled R installation. But fear not! You can easily install it from inside R, using the install (dot) packages function, which, by the way is a function of the utils package. This function goes to CRAN. CRAN is short for the Comprehensive R Archive Network, a repository where thousands of packages are available. The function downloads the package file and installs the package on your system. All of this is done with this single command in R, pretty cool right? We've now installed the ggvis package, but we can't use it yet.

4. Load packages
To do that, we'll have to actually load the package into our current R session. When R loads a package, it actually attaches it to the search list. This is a list of packages and environments that R looks through to find the variable or function you want to use. To have a look at this list, you can use the search() function. Whenever you execute code that depends on any other variable or function, R goes through all these packages one after the other to find it. Apart from all the packages that are loaded into our R session, we also see ".GlobalEnv"; this is our own workspace, where the user-defined R objects live. You can also see that the search() path already contains a bunch of packages. When R is started, it loads 7 packages on default, among which is the base package. Others are the utils, datasets and methods package. That's why, when you start R, you can use the mean function, or the install (dot) packages function without having to explicitly load the package. The ggvis package that we've installed earlier, however, won't be loaded automatically. If we try to access the ggvis function, for example, R will return an error, telling us that the function ggvis could not be found. That's because ggvis is not yet in the search list.

5. Load packages: library()
To access ggvis' functionality, we'll have to load the package using the library command. This command takes the name of the package and adds the package to the search list, right after the global environment, making all the functions, data and pre-compiled code it contains available and ready to be used. We can check this by running search() once more. Indeed, ggvis is now part of the search list. If we now execute the same command, a pretty awesome graph shows up! Now R could find the function in the list of attached packages and use it to create this nice plot.

6. Load packages: require()
Before you proceed to the exercises, I want to tell you about the require function. Just like the library function, require loads packages into your R session. The only difference appears when you're trying to load a package that is not yet installed. Let's say you want to load the data (dot) table package, a package to perform data manipulation, but that this package is not yet installed. If you call library(data (dot) table). R throws an error in this case. However, when you execute require(data (dot) table), you get a warning.

7. Load packages: require()
Also, the result of this require function will be FALSE if attaching the package failed. This is a good alternative when you want to avoid errors, for example when you're attaching packages dynamically inside functions.

8. Wrap-up
So to wrap up: the install (dot) packages() function installs packages for you, while library() and require() load them for you. And when you load packages, you're attaching them to a search list, making them available in your current R session. Before you start writing your own functions, first do a quick search for packages that do the same thing. You can simply install and load the package, have a look at the documentation and avoid having to rewrite a bunch of code that's already been written. I'm not saying that you should never write your own functions, but for common problems such as data manipulation or visualization, there are some pretty neat packages out there that will get you up and running in no time.

9. Let's practice!
  
  # Load the ggplot2 package
  library(ggplot2)

# Retry the qplot() function
qplot(mtcars$wt, mtcars$hp)

# Check out the currently attached packages again
search()

Exercise

Different ways to load a package
The library() and require() functions are not very picky when it comes down to argument types: both library(rjson) and library("rjson") work perfectly fine for loading a package.
Have a look at some more code chunks that (attempt to) load one or more packages:
  # Chunk 1
  library(data.table)
require(rjson)
# Chunk 2
library("data.table")
require(rjson)
# Chunk 3
library(data.table)
require(rjson, character.only = TRUE)
# Chunk 4
library(c("data.table", "rjson"))

Select the option that lists all of the chunks that do not generate an error. The console is yours to experiment in.
Instructions


Possible Answers
• Only (1)
• (1) and (2)
• (1), (2) and (3)
• All of them are valid

Chapter 4. lapply


Got It!
  1. lapply
When you're using R, you will often encounter vectors and lists containing all sorts of information. You've seen before that the for loop is there to help us iterate over all kinds of data structures. But I'm glad to tell you there's an even easier way!
  
  2. NYC: for
Let's have a look at some information related to New York City. It is stored in a list. Suppose we want to find out the class of each element of this list. As you already know, you could use a for loop that iterates over the different elements of nyc, and call the class() function. As expected, the first element is numeric, the second one is a character string, and the third is a logical. This however is quite a bit of code just to find out the class of elements of a list, isn't it?
  
  3. NYC: lapply()
lapply is here to rescue us from writing too much code for simple tasks such as these. I don't want to overwhelm you with a complex definition of lapply, so let us simply rewrite our previous statement. Let's replace the for loop with an lapply and see what happens. Under the hood, lapply iterated over the inputted list, nyc, and on each element of the list, applied the function class(). The output of lapply includes the results of calling the class function over each of the list elements. The first element in the output now contains the class of the first element in nyc, namely "numeric".

4. NYC: lapply()
The second element in the output contains the class of the second element in nyc, "character", and the third element contains logical, the class of the third input element. Also notice that the names of the list, pop, boroughs and capital are maintained here, that's pretty useful!

5. Cities: for
Let's have a look at another example, now with a vector of city names. Suppose we want to build a vector of the same length as cities, containing the number of characters of each city name. We can do that by using the following for loop. First, we create an empty vector, called num_chars. Inside the for loop, using a looping index, we gradually fill this vector up using the nchar function. We get the wanted result, but it's a lot of code to do a simple thing, in my opinion.

6. Cities: lapply()
Fortunately, refactoring this code to use lapply is easy. As the input, we use the cities vector as well as the function we want to apply on each element in this vector: We get a list containing the number of characters of the corresponding cities in the input vector. Notice here that the output is a list, although the input was a vector. This is something important about the lapply function: it always returns a list, irrespective of the input data structure.

7. Cities: lapply()
If you want to convert this list to a vector, you can simply wrap this lapply function inside the unlist() function which turns a list into a vector. In a single one-liner, we have achieved the exact same thing as the bulky for loop. Moreover, by using lapply our code looks much more intuitive and readable.

8. Oil
In the previous examples we applied the functions class() and nchar() on every element of the input vector or list, but lapply can also be used with functions that you've written yourself. Let's try to write some code to illustrate this. Assume we have a list of oil prices per gallon. We will write a function that triples every element of oil_prices. We can write the function triple that simply calculates the triple of its input: Now, all we need to do is applying this triple function on each element of oil_prices using lapply. Works like a charm! Again, you can unlist the result, if you want your output as a vector rather than as a list:

9. Oil
Now let's try to make this triple function a bit more generic, and instead call it multiply, and have it use an additional argument, factor: We can now choose with which factor we want to multiply our input. Calling triple is now the same as calling multiply with the factor argument equal to three. But wait, what if we want to use multiply inside the lapply function? How can we specify this additional argument? Well, lapply allows you to add additional arguments to the function: just include them right after the function you want to apply to your list or vector: Now, on every element of oil_prices, the function multiply is called, with x equal to each element of the input list, and a factor of three every time. See what happens with the oil prices when we change the factor of the multiply function: they all get multiplied by four now.

10. Let's practice!
In the next set of exercises, you'll get hands on experience with the lapply function. You'll learn how to use lapply on built-in functions, your own functions as well as anonymous functions. Have fun!

Use lapply with a built-in R function
Before you go about solving the exercises below, have a look at the documentation of the lapply() function. The Usage section shows the following expression:
lapply(X, FUN, ...)
To put it generally, lapply takes a vector or list X, and applies the function FUN to each of its members. If FUN requires additional arguments, you pass them after you've specified X and FUN (...). The output of lapply() is a list, the same length as X, where each element is the result of applying FUN on the corresponding element of X.
Now that you are truly brushing up on your data science skills, let's revisit some of the most relevant figures in data science history. We've compiled a vector of famous mathematicians/statisticians and the year they were born. Up to you to extract some information!
  
  Instructions

• Have a look at the strsplit() calls, that splits the strings in pioneers on the : sign. The result, split_math is a list of 4 character vectors: the first vector element represents the name, the second element the birth year.
• Use lapply() to convert the character vectors in split_math to lowercase letters: apply tolower() on each of the elements in split_math. Assign the result, which is a list, to a new variable split_low.
Finally, inspect the contents of split_low with str().

code

# The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

# Split names from birth year
split_math <- strsplit(pioneers, split = ":")

# Convert to lowercase strings: split_low
split_low <- lapply(split_math, tolower)

# Take a look at the structure of split_low
str(split_low)

code

# Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Write function select_first()
select_first <- function(x) {
  x[1]
}
# Apply select_first() over split_low: names
names <- lapply(split_low, select_first)

# Write function select_second()
select_second <- function(x) {
  x[2]
}
# Apply select_second() over split_low: years
years <- lapply(split_low, select_second)

Exercise
lapply and anonymous functions
Writing your own functions and then using them inside lapply() is quite an accomplishment! But defining functions to use them only once is kind of overkill, isn't it? That's why you can use so-called anonymous functions in R.

Previously, you learned that functions in R are objects in their own right. This means that they aren't automatically bound to a name. When you create a function, you can use the assignment operator to give the function a name. It's perfectly possible, however, to not give the function a name. This is called an anonymous function:
  
  # Named function
  triple <- function(x) { 3 * x }

# Anonymous function with same implementation
function(x) { 3 * x }

# Use anonymous function inside lapply()
lapply(list(1,2,3), function(x) { 3 * x })
split_low is defined for you.

Instructions

Transform the first call of lapply() such that it uses an anonymous function that does the same thing.
In a similar fashion, convert the second call of lapply to use an anonymous version of the select_second() function.
Remove both the definitions of select_first() and select_second(), as they are no longer useful.

# split_low has been created for you
split_low
# Transform: use anonymous function inside lapply
function(x) {x[1]}
names <- lapply (split_low, function (x) {x[1]})
# Transform: use anonymous function inside lapply
function(x) {x[2]}
years <- lapply (split_low, function(x) {x[2]})


Exercise

Use lapply with additional arguments
In the video, the triple() function was transformed to the multiply() function to allow for a more generic approach. lapply() provides a way to handle functions that require more than one argument, such as the multiply() function:
  multiply <- function(x, factor) {
    x * factor
  }
lapply(list(1,2,3), multiply, factor = 3)
On the right we've included a generic version of the select functions that you've coded earlier: select_el(). It takes a vector as its first argument, and an index as its second argument. It returns the vector's element at the specified index.


Instructions

Use lapply() twice to call select_el() over all elements in split_low: once with the index equal to 1 and a second time with the index equal to 2. Assign the result to names and years, respectively.


# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)
# Generic select function
select_el <- function(x, index) {
  x[index]
}
# Use lapply() twice on split_low: names and years
names <- lapply (split_low, select_el, index= 1)
years <- lapply (split_low, select_el, index= 2)

Exercise
Apply functions that return NULL
In all of the previous exercises, it was assumed that the functions that were applied over vectors and lists actually returned a meaningful result. For example, the tolower() function simply returns the strings with the characters in lowercase. This won't always be the case. Suppose you want to display the structure of every element of a list. You could use the str() function for this, which returns NULL:
  lapply(list(1, "a", TRUE), str)
This call actually returns a list, the same size as the input list, containing all NULL values. On the other hand calling
str(TRUE)
on its own prints only the structure of the logical to the console, not NULL. That's because str() uses invisible() behind the scenes, which returns an invisible copy of the return value, NULL in this case. This prevents it from being printed when the result of str() is not assigned.
What will the following code chunk return (split_low is already available in the workspace)? Try to reason about the result before simply executing it in the console!
lapply(split_low, function(x) {
  if (nchar(x[1]) > 5) {
    return(NULL)
  } else {
    return(x[2])
  }
})
Instructions

Possible Answers
• list(NULL, NULL, "1623", "1857")
• list("gauss", "bayes", NULL, NULL)
• list("1777", "1702", NULL, NULL) (correct answer)
list("1777", "1702")


Got It!
1. sapply
2. lapply()
Before, I talked about how lapply can be used to apply a function over each and every element of a list or a vector. The key thing of the lapply function is that its output is always a list. That's because an R function can return any R object. Also, the class of the R object it returns can differ depending on the input. When lapply is used to apply such a function over all elements in an input list or vector, it needs a list to store these results, because a list is able to contain heterogeneous content. However, you can think of many cases where the function always returns the same type of object over and over.

3. Cities: lapply()
Remember the cities example from the previous video? We had a vector, cities. We used lapply with the nchar function. As a result, we obtained a list with the length of each of the cities names. But wait! These values could very well fit into a simple vector as well! They all have the same type!
  
  4. Cities: lapply()
We already tried to solve this by using the unlist function to convert a list to a vector as follows: But behold! there's an easier way to tackle the case in which all the results have the same type

5. Cities: sapply()
by using the sapply function. It's short for 'simplify apply'. Awesome, right? The result is a named vector, which contains the same information as the vector we obtained earlier using unlist and lapply together. Under the hood, something slightly more complex is going on. sapply calls lapply to apply the nchar function over each element of the cities vector, and then uses the simplify2array function to convert that list lapply generated to an array. In our case, sapply managed to convert the result to a one dimensional array, which is a vector. It's pretty awesome to see how R takes care of all this for us! On top of all that, sapply even found a sensible way of naming this vector.

6. Cities: sapply()
You can choose not to name the output of sapply, by setting its USE (dot) NAMES argument to FALSE. Voilá, city names are gone! Remember that USE (dot) NAMES is TRUE by default.

7. Cities: sapply()
Now, what would happen if the function you want to apply over the input, each time returns a vector containing two values instead of one? Let's find out with another example. The function first_and_last, that I've written for you, splits up a string to its letters, and then returns the 'minimum and maximum' letter according to alphabetical order: If we call this function on the character string "New York", the function returns a vector containing "e" and "Y". These are precisely the first and last letters of the word "New York" when ordered alphabetically.

8. Cities: sapply()
We can now use this function to apply it over every city name in cities. Instead of a vector, we now obtain a matrix, with 2 rows and 6 columns. Can you see how the output is generated? Notice here, that once again sapply assigns meaningful strings to the names of the columns and rows automatically.

9. Unable to simplify?
Both of my previous examples show the power of the sapply function to simplify the output of lapply, but what if this simplification is not possible? There are cases in which the function you want to apply does not always return a vector of the same length at all times. For these cases, simplification to a vector or a matrix just doesn't make sense. How does sapply respond to that? I've defined a function, unique_letters, that returns a vector of all the letters that are used inside a character string. If we try this function on the character string "London", we get a vector containing the unique letters in "London": "L", "o", "n" and "d".

10. Unable to simplify?
Let us first see how lapply behaves when we use unique_letters on the cities variable: As expected, we get a list containing vectors of single letters. We also see that the vectors have varying lengths, so trying to simplify this list could lead to pretty strange results. Let's see how sapply handles this. The result is the same as the lapply function, we get a list of vectors because R couldn't think of a meaningful way of simplifying the list of vectors. It was only able to give some meaningful names to the results. The fact that sapply simplifies when possible is quite handy, but it can also lead to problems. When writing a program, you might expect that the result of a sapply() function will be a vector where in fact it's still a list because simplification didn't work out!

11. Let's practice!
  To solve this, one can also use the R function vapply, which we'll discuss in our next video. Before you learn about it, head over to the interactive exercises to see how your apply skills are progressing!

Code

# temp has already been defined in the workspace

# Use lapply() to find each day's minimum temperature
lapply(temp, min)

# Use sapply() to find each day's minimum temperature
sapply(temp, min)

# Use lapply() to find each day's maximum temperature
lapply (temp, max)

# Use sapply() to find each day's maximum temperature
sapply (temp, max)


Example:
  
  # temp is already defined in the workspace
  
  # Finish function definition of extremes_avg
  extremes_avg <- function(temp) {
    ( min(temp) + max(temp) ) / 2
  }

# Apply extremes_avg() over temp using sapply()
sapply (temp, extremes_avg)

# Apply extremes_avg() over temp using lapply()
lapply (temp, extremes_avg)

Exercise

sapply with function returning vector
In the previous exercises, you've seen how sapply() simplifies the list that lapply() would return by turning it into a vector. But what if the function you're applying over a list or a vector returns a vector of length greater than 1? If you don't remember from the video, don't waste more time in the valley of ignorance and head over to the instructions!
  
  Instructions

Finish the definition of the extremes() function. It takes a vector of numerical values and returns a vector containing the minimum and maximum values of a given vector, with the names "min" and "max", respectively.
Apply this function over the vector temp using sapply().
Finally, apply this function over the vector temp using lapply() as well.


Code

# temp is already available in the workspace

# Create a function that returns min and max of a vector: extremes
extremes <- function(temp) {
  c(min = min(temp), max = max(temp))
}

# Apply extremes() over temp with sapply()
sapply (temp, extremes)

# Apply extremes() over temp with lapply()
lapply (temp, extremes)

Exercise
sapply can't simplify, now what?
It seems like we've hit the jackpot with sapply(). On all of the examples so far, sapply() was able to nicely simplify the rather bulky output of lapply(). But, as with life, there are things you can't simplify. How does sapply() react?
We already created a function, below_zero(), that takes a vector of numerical values and returns a vector that only contains the values that are strictly below zero.

Instructions

	• Apply below_zero() over temp using sapply() and store the result in freezing_s.
	• Apply below_zero() over temp using lapply(). Save the resulting list in a variable freezing_l.
	• Compare freezing_s to freezing_l using the identical() function.

Code

# temp is already prepared for you in the workspace
# Definition of below_zero()
below_zero <- function(temp) {
  return(temp[temp < 0])
}
# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)
# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)
# Are freezing_s and freezing_l identical?
identical(freezing_s,freezing_l)

Exercise
sapply with functions that return NULL
You already have some apply tricks under your sleeve, but you're surely hungry for some more, aren't you? In this exercise, you'll see how sapply() reacts when it is used to apply a function that returns NULL over a vector or a list.
A function print_info(), that takes a vector and prints the average of this vector, has already been created for you. It uses the cat() function.

Instructions

• Apply print_info() over the contents of temp with sapply().
• Repeat this process with lapply(). Do you notice the difference?
  
  code

# temp is already available in the workspace

# Definition of print_info()
print_info <- function(temp) {
  cat("The average temperature is", mean(temp), "\n")
}

# Apply print_info() over temp using sapply()
sapply (temp, print_info)
# Apply print_info() over temp using lapply()
lapply (temp, print_info)

Exercise

Reverse engineering sapply
sapply(list(runif (10), runif (10)), 
       function(x) c(min = min(x), mean = mean(x), max = max(x)))
Without going straight to the console to run the code, try to reason through which of the following statements are correct and why.

(1) sapply() can't simplify the result that lapply() would return, and thus returns a list of vectors.
(2) This code generates a matrix with 3 rows and 2 columns.
(3) The function that is used inside sapply() is anonymous.
(4) The resulting data structure does not contain any names.

Select the option that lists all correct statements.

Instructions

Possible Answers

(1) and (3)

(2) and (3) (Correct answers)

(1) and (4)

(2), (3) and (4)

Vapply


Got It!
1. vapply
That was some pretty advanced stuff you did there!

2. Recap
Before you head over to the final topic of this chapter, let's do a quick recap. First, you learned about lapply. This function allows you to avoid the for loop altogether and apply a function on every element of a list or a vector. The output list has the same length as the input list. The lapply function always returns a list, but there are many cases in which this list can be simplified to an array. That's why R provides the sapply function, short for simplify apply. Whenever possible, sapply tries to convert the list that lapply generates to an array. If this is not possible, however, sapply simply returns the same list that lapply generates. This can be quite dangerous, because the behavior of sapply's output depends on the specifics of the data we're using. This short overview leads us seamlessly to the vapply function. vapply is quite similar to sapply. Under the hood, it uses lapply and then tries to simplify the result. However, when using vapply, you have to explicitly say what the type of the return value will be. In sapply, this is not required nor possible.

3. sapply() & vapply()
Let's take a look at a case where sapply and vapply act quite similarly, and then check an example where the power of vapply is more clear. We'll be using the cities example from before. We had a vector of city names, cities, over which we apply different functions. For example, calling the nchar function with sapply gives us a vector with the length of each character string. How can we write this using vapply? Well, when we check the documentation of the vapply function, we can see it can be used as follows. X, FUN and USE (dot) NAMES are arguments that you already know from the sapply() function, but the FUN (dot) VALUE argument is new here. This argument should be a general template for the return value of FUN, the function that you want to apply over the input X. In our example, we want to apply the nchar function over cities. nchar is a function that returns a single number, which is a numeric vector of length 1. We can template this output using the numeric() function, by setting FUN dot VALUE to numeric(1), which tells the vapply function that nchar() should return a single numerical value. The result is exactly the same as the sapply function from before. However, this 'pre-specification' of FUN's return value makes vapply a safer alternative to sapply.

4. vapply()
To understand this, let's re-use another example from our discussion of sapply, where we extracted the first and last letters of the cities' names. Here, sapply works like a charm again.

5. vapply()
To write this using vapply, we'll need to set FUN (dot) NAMES again. This time, the FUN we want to apply, first_and_last returns a character vector of length two, which can be expressed as character(2). Works great!

6. vapply() errors
But let's see what happens if we told vapply() that we expect first_and_last to return a character vector of length 1. This generates an error. the output of the first_and_last function is not expected, so R complains.

7. vapply() errors
A similar error pops up if we tell vapply() that the output of first_and_last will be a numerical vector of length 2.

8. unique_letters()
This little bit of extra work in defining the FUN dot VALUES arguments has the benefit that you really have to think about what your function will return without blindly assuming that the sapply function will handle every case for you! Let's have a look at a final example. Remember the function we wrote to get the unique letters in a string? Here it is again.

9. vapply() > sapply()
We can call this unique_letters() function and apply it over the cities vector using sapply. At this point, we could have incorrectly assumed that sapply would be successful at simplifying the result to a vector, but this is not the case because the unique_letters function returns vectors of different sizes. If we try to do something similar with vapply, we have to specify the FUN (dot) VALUE argument. Let's assume that unique_letters() always returns a vector of 4 character strings: As before, we get an error, because the unique_letters() function doesn't always return a vector of character strings of length 4. This stresses our main point: vapply() is safer than sapply() if you want to simplify the result that lapply() generates.

10. Let's practice!
  Wow, that's a lot of applying that you can do in R now! In fact, there's even more. The apply, tapply, mapply and rapply functions exist as well. You'll learn more about these in the advanced R course. Enough theory for today. Head over to the final set of exercises for this chapter to ramp up your skills!

Exercise
Use vapply
Before you get your hands dirty with the third and last apply function that you'll learn about in this intermediate R course, let's take a look at its syntax. The function is called vapply(), and it has the following syntax:

vapply(X, FUN, FUN.VALUE, ..., USE.NAMES = TRUE)
Over the elements inside X, the function FUN is applied. The FUN.VALUE argument expects a template for the return argument of this function FUN. USE.NAMES is TRUE by default; in this case vapply() tries to generate a named array, if possible.

For the next set of exercises, you'll be working on the temp list again, that contains 7 numerical vectors of length 5. We also coded a function basics() that takes a vector, and returns a named vector of length 3, containing the minimum, mean and maximum value of the vector respectively.

Instructions

Apply the function basics() over the list of temperatures, temp, using vapply(). This time, you can use numeric(3) to specify the FUN.VALUE argument.

code-
  
  # temp is already available in the workspace
  
  # Definition of basics()
  basics <- function(x) {
    c(min = min(x), mean = mean(x), max = max(x))
  }

# Apply basics() over temp using vapply()
vapply(temp, basics, numeric(3))

Exercise

Use vapply (2)
So far you've seen that vapply() mimics the behavior of sapply() if everything goes according to plan. But what if it doesn't?
  
  In the video, Filip showed you that there are cases where the structure of the output of the function you want to apply, FUN, does not correspond to the template you specify in FUN.VALUE. In that case, vapply() will throw an error that informs you about the misalignment between expected and actual output.

Instructions

Inspect the pre-loaded code and try to run it. If you haven't changed anything, an error should pop up. That's because vapply() still expects basics() to return a vector of length 3. The error message gives you an indication of what's wrong.
Try to fix the error by editing the vapply() command.

Code 

# temp is already available in the workspace

# Definition of the basics() function
basics <- function(x) {
  c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}

# Fix the error:
vapply(temp, basics, numeric(4))

Exercise
From sapply to vapply
As highlighted before, vapply() can be considered a more robust version of sapply(), because you explicitly restrict the output of the function you want to apply. Converting your sapply() expressions in your own R scripts to vapply() expressions is therefore a good practice (and also a breeze!).

Instructions

Convert all the sapply() expressions on the right to their vapply() counterparts. Their results should be exactly the same; you're only adding robustness. You'll need the templates numeric(1) and logical(1).


Code 

# temp is already defined in the workspace

# Convert to vapply() expression
vapply(temp, max, numeric(1))

# Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, logical(1), y = 5)

Exercise
From sapply to vapply
As highlighted before, vapply() can be considered a more robust version of sapply(), because you explicitly restrict the output of the function you want to apply. Converting your sapply() expressions in your own R scripts to vapply() expressions is therefore a good practice (and also a breeze!).

Instructions

Convert all the sapply() expressions on the right to their vapply() counterparts. Their results should be exactly the same; you're only adding robustness. You'll need the templates numeric(1) and logical(1).

Code 

# temp is already defined in the workspace

# Convert to vapply() expression
vapply(temp, max, numeric(1))

# Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, logical(1), y = 5)

Chapter 5- Utilities

1. Useful Functions
2. Loads of useful functions
By now, you surely have some idea of the huge amount of useful functions that are available in R. The functions of the apply family that you've learned about before are just an illustration of this diversity. Along the way you also used the sort function, the print function, the identical function, and many more. In this video, I'm going to talk about a number of easy, but very often used functions in the R language. First, I'm going to talk about some math-related functions and next, I'll head over to functions that relate more closely to R's data structures. If you aced all the previous exercises, you should recognize some of them.
3. Mathematical utilities
Have a look at the following R code that uses several mathematical functions. The first two lines of code are nothing new; they simply create two vectors, v1 and v2. The last line of code is less straightforward so let's chop it up into pieces and see what each of the function components does along the way.
4. abs()
The innermost function, abs() calculates the absolute value of an array of numerical values, in our case the vectors v1 and v2. I went ahead and already replaced the variable names with the actual vectors that they represent. The result is what we would expect. We get the positive value of all elements. Let's replace the vectors that result from calling the abs() functions in the expression, giving us the following line.
5. round()
The next inner function that we encounter is the round() function, which rounds the input. In the first round function, 1 (point) 1 gets rounded to 1, while 2 (point) 7 is rounded to 3. In the second round call 3 (point) 6 becomes 4 and 8 (point) 0 becomes 8.
6. sum()
If we replace the round() functions with their results, we arrive at the sum() function. This function simply computes the sum of the input array. If you pass a matrix as an argument to the sum function, for example, the sum of all the matrix elements gets returned. In our example, a vector is passed to the sum function, so R simply calculates the sum of the vector elements. The first sum is 16, while the second sum equals 22. We've almost broken down our expression entirely if we fill in the results of both the sum calls.
7. mean()
The mean function calculates the arithmetic mean. Again, mean() is a generic function that is capable of handling different types of R objects, but most commonly you would use it on numerical arrays. In our case, the input to mean is a vector of length 2, containing the values 16 and 22. Recalling our primary school level math, it isn't a surprise that the result of this call is 19. Finally! We arrive at the end of our bulky arithmetic one-liner: the result is 19. This corresponds to the result that we get when we execute the code chunk we began with.
8. Functions for data structures
This was still pretty easy, right? Let's head over to the next example to introduce some of the functions you'll often use when creating and manipulating data structures. Take a close look at this big fella'. No need to panic! There are some things we already know here. The list() function creates a list. Apparently, there are three list elements, named log, ch and int_vec. log is simply a logical, TRUE, ch is a character string, hello, but what about int_vec? Let's have a closer look. The innermost function here, is the seq() function
9. seq()
seq generates a sequence of numbers. The first two arguments tell R the limits of the sequence. That is, where to start and end the sequence, respectively. The by argument specifies the increment value for the sequence on each step. For instance, this line of code would generate a sequence starting at 1, going to 10, with steps of size 3. For our example, the seq function call would read as: generate a sequence from 8 to 2, while taking steps of -2. We get a vector of length 4. As before, let's go ahead and fill in the resulting vector to simplify the expression for int_vec.
10. rep()
We now arrive at the rep() function. The rep() function has the ability to replicate its input, which typically is a vector or a list. Using the times argument, we can specify how the replication should happen. If the times argument is a vector of length 1, it tells rep() how often the entire structure should be repeated. This is the case in our example, which results in a vector of length 8. You could also use the each argument inside rep. Instead of repeating the entire vector, every element gets repeated. Can you spot the difference? There are more advanced ways of using rep() which I won't detail here. Remember, help is just a single question mark (?) away in R! So our rep() call with the times argument results in a vector of length 8. Let's go ahead an replace the call with this result.
11. sort()
Finally, the sort() function is a generic function for sorting an input vector. You can use it on numerical values, but also on character and logical vectors. It works as you would expect, sorting the input vector in ascending order. By setting the decreasing argument, which is FALSE by default, to TRUE, we can reverse the order of arranging. So that's that. We've reverse engineered the bulky expression for the int_vec element inside our list. To check if we decomposed this expression correctly
12. sort()
let's see what a direct evaluation looks like. Looks good! We thus end up with the following list definition.
13. str()
Remember the str() function to inspect the structure of this list? It's a great function to see the contents of your data structures in a concise way. Before you can roll up your sleeves for the some of the interactive exercises
14. is.*(), as.*()
have a look at the following R expression. The is (dot) functions are functions you can use to check the type of your data structure. They return a logical. Because li is a list, is (dot) list of li returns TRUE. On the other hand, is (dot) list on a vector returns FALSE. Instead of is (dot) function, R also provides the as (dot) functions. These can be used to convert vectors to lists, for example. Now, calling is (dot) list on li2 will return TRUE as the vector was converted to a list using as (dot) list().
15. is.*(), as.*()
Next, there might be some cases in which you want to convert your list to a vector. In these cases, you might want to use the unlist function. R flattens the entire list structure and returns a single vector. Notice the coercion here. Because vectors can only contain a single atomic type, the logical TRUE and the numerical vector are all coerced to character strings. Also notice how R tries to come up with meaningful names for all vector elements.
16. append(), rev()
Finally, you should definitely check out the append() and rev() functions. The append() function allows you to add elements to a vector or a list in a very readable way. In combination with the rev() function, which reverses elements in a data structure, we could create a new version of li that contains the same data in the different order. The rev() function first reverses the list, placing the int_vec vector first and the log value, TRUE last.
17. append(), rev()
Afterwards, append() concatenates the original vector li and its reversed version to create a list of 6 elements, double li's length. Notice how I used the str() function here to inspect the structure.
18. Let's practice!
Head over to the exercises to experience all of this data structure juggling and mathematical supercharging yourself! Have fun!


Exercise

Mathematical utilities
Have another look at some useful math functions that R features:
	• abs(): Calculate the absolute value.
	• sum(): Calculate the sum of all the values in a data structure.
	• mean(): Calculate the arithmetic mean.
	• round(): Round the values to 0 decimal places by default. Try out ?round in the console for variations of round() and ways to change the number of digits to round to.
As a data scientist in training, you've estimated a regression model on the sales data for the past six months. After evaluating your model, you see that the training error of your model is quite regular, showing both positive and negative values. A vector errors containing the error values has been pre-defined for you.

Instructions

Calculate the sum of the absolute rounded values of the training errors. You can work in parts, or with a single one-liner. There's no need to store the result in a variable, just have R print it.

Code

# The errors vector has already been defined for you
errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)

# Sum of absolute rounded values of errors
abs(round(errors))
sum(abs(round(errors)))

Exercise

Find the error
We went ahead and pre-loaded some code for you, but there's still an error. Can you trace it and fix it?
  In times of despair, help with functions such as sum() and rev() are a single command away; simply execute the code ?sum and ?rev.

Instructions

Fix the error by including code on the last line. Remember: you want to call mean() only once!
  
  # Don't edit these two lines
  vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)

# Fix the error
mean(abs(vec1))

Exercise
Data Utilities
R features a bunch of functions to juggle around with data structures::
  • seq(): Generate sequences, by specifying the from, to, and by arguments.
• rep(): Replicate elements of vectors and lists.
• sort(): Sort a vector in ascending order. Works on numerics, but also on character strings and logicals.
• rev(): Reverse the elements in a data structures for which reversal is defined.
• str(): Display the structure of any R object.
• append(): Merge vectors or lists.
• is.*(): Check for the class of an R object.
• as.*(): Convert an R object from one class to another.
• unlist(): Flatten (possibly embedded) lists to produce a vector.
Remember the social media profile views data? Your LinkedIn and Facebook view counts for the last seven days have been pre-defined as lists.

Instructions

• Convert both linkedin and facebook lists to a vector, and store them as li_vec and fb_vec respectively.
• Next, append fb_vec to the li_vec (Facebook data comes last). Save the result as social_vec.
Finally, sort social_vec from high to low. Print the resulting vector.

code

# The linkedin and facebook lists have already been created for you
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
facebook <- list(17, 7, 5, 16, 8, 13, 14)

# Convert linkedin and facebook to a vector: li_vec and fb_vec
li_vec <- unlist(linkedin, recursive = TRUE, use.names = TRUE)
fb_vec <- unlist(facebook, recursive = TRUE, use.names = TRUE)

# Append fb_vec to li_vec: social_vec
social_vec <- append(li_vec,fb_vec)

# Sort social_vec
sort(social_vec, decreasing=TRUE)

Exercise

Find the error (2)
Just as before, let's switch roles. It's up to you to see what unforgivable mistakes we've made. Go fix them!

Instructions

Correct the expression. Make sure that your fix still uses the functions rep() and seq().


# Fix me
rep(seq(1, 7, by = 2), times = 7)

Beat Gauss using R

There is a popular story about young Gauss. As a pupil, he had a lazy teacher who wanted to keep the classroom busy by having them add up the numbers 1 to 100. Gauss came up with an answer almost instantaneously, 5050. On the spot, he had developed a formula for calculating the sum of an arithmetic series. There are more general formulas for calculating the sum of an arithmetic series with different starting values and increments. Instead of deriving such a formula, why not use R to calculate the sum of a sequence?
    
    Instructions
100 XP
Using the function seq(), create a sequence that ranges from 1 to 500 in increments of 3. Assign the resulting vector to a variable seq1.
Again with the function seq(), create a sequence that ranges from 1200 to 900 in increments of -7. Assign it to a variable seq2.
Calculate the total sum of the sequences, either by using the sum() function twice and adding the two results, or by first concatenating the sequences and then using the sum() function once. Print the result to the console.

Code 

# Create first sequence: seq1
seq1 <- seq(from = 1, to = 500, by = 3)

# Create second sequence: seq2
seq2 <- seq(from= 1200, to = 900, by= -7)

# Calculate total sum of the sequences
sum(seq1) + sum(seq2) 

Exercise
grepl & grep
In their most basic form, regular expressions can be used to see whether a pattern exists inside a character string or a vector of character strings. For this purpose, you can use:
	• grepl(), which returns TRUE when a pattern is found in the corresponding character string.
	• grep(), which returns a vector of indices of the character strings that contains the pattern.
Both functions need a pattern and an x argument, where pattern is the regular expression you want to match for, and the x argument is the character vector from which matches should be sought.
In this and the following exercises, you'll be querying and manipulating a character vector of email addresses! The vector emails has been pre-defined so you can begin with the instructions straight away!
  
  Instructions

• Use grepl() to generate a vector of logicals that indicates whether these email addresses contain "edu". Print the result to the output.
• Do the same thing with grep(), but this time save the resulting indexes in a variable hits.
Use the variable hits to select from the emails vector only the emails that contain "edu".

code 

# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for "edu"
grepl("edu", emails)

# Use grep() to match for "edu", save result to hits
hits <- grep("edu", emails)

# Subset emails using hits
emails[hits]

Exercise
grepl & grep (2)
You can use the caret, ^, and the dollar sign, $ to match the content located in the start and end of a string, respectively. This could take us one step closer to a correct pattern for matching only the ".edu" email addresses from our list of emails. But there's more that can be added to make the pattern more robust:
	• @, because a valid email must contain an at-sign.
	• .*, which matches any character (.) zero or more times (*). Both the dot and the asterisk are metacharacters. You can use them to match any character between the at-sign and the ".edu" portion of an email address.
	• \\.edu$, to match the ".edu" part of the email at the end of the string. The \\ part escapes the dot: it tells R that you want to use the . as an actual character.
Instructions

	• Use grepl() with the more advanced regular expression to return a logical vector. Simply print the result.
	• Do a similar thing with grep() to create a vector of indices. Store the result in the variable hits.
	• Use emails[hits] again to subset the emails vector

Code

# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
# Use grepl() to match for .edu addresses more robustly
grepl("@.*\\.edu$", emails)
# Use grep() to match for .edu addresses more robustly, save result to hits
hits <- grep("@.*\\.edu$", emails)
# Subset emails using hits
emails[hits]

Exercise

sub & gsub

While grep() and grepl() were used to simply check whether a regular expression could be matched with a character vector, sub() and gsub() take it one step further: you can specify a replacement argument. If inside the character vector x, the regular expression pattern is found, the matching element(s) will be replaced with replacement. sub() only replaces the first match, whereas gsub() replaces all matches.
Suppose that emails vector you've been working with is an excerpt of DataCamp's email database. Why not offer the owners of the .edu email addresses a new email address on the datacamp.edu domain? This could be quite a powerful marketing stunt: Online education is taking over traditional learning institutions! Convert your email and be a part of the new generation!

Instructions

With the advanced regular expression "@.*\\.edu$", use sub() to replace the match with "@datacamp.edu". Since there will only be one match per character string, gsub() is not necessary here. Inspect the resulting output.

Code 

# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "global@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use sub() to convert the email domains to datacamp.edu
sub("@.*\\.edu$", "@datacamp.edu", emails, ignore.case = FALSE, perl = FALSE,
    fixed = FALSE, useBytes = FALSE)
    
    Exercise

sub & gsub (2)
Regular expressions are a typical concept that you'll learn by doing and by seeing other examples. Before you rack your brains over the regular expression in this exercise, have a look at the new things that will be used:
  • .*: A usual suspect! It can be read as "any character that is matched zero or more times".
• \\s: Match a space. The "s" is normally a character, escaping it (\\) makes it a metacharacter.
• [0-9]+: Match the numbers 0 to 9, at least once (+).
• ([0-9]+): The parentheses are used to make parts of the matching string available to define the replacement. The \\1 in the replacement argument of sub() gets set to the string that is captured by the regular expression [0-9]+.
awards <- c("Won 1 Oscar.",
            "Won 1 Oscar. Another 9 wins & 24 nominations.",
            "1 win and 2 nominations.",
            "2 wins & 3 nominations.",
            "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
            "4 wins & 1 nomination.")
sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)
What does this code chunk return? awards is already defined in the workspace so you can start playing in the console straight away.

Instructions

Possible Answers
• A vector of integers containing: 1, 24, 2, 3, 2, 1.
• The vector awards gets returned as there isn't a single element in awards that matches the regular expression.
• A vector of character strings containing "1", "24", "2", "3", "2", "1".
• A vector of character strings containing "Won 1 Oscar.", "24", "2", "3", "2", "1". (correct answer)

1. Times & Dates
One more thing I want to talk to you about are dates and times in R. Time information can come in pretty handy in different situations. For example, imagine you're writing a script that has to be run hourly on a remote server. Generating log files that contain timing information can help you structure these log files and trace potential problems. For other very specific applications such as time-series analyses and seasonality studies, R's power to deal with times and dates will prove extremely useful.
2. Today, right now!
The first step in our exploration will be to simply ask R what the current date is. The output tells us that we're in the year 2015, the fifth month and the seventh day. That is, the seventh of May, 2015. Time is going fast, as always... Is the variable today simply a character string or is there something else going on? Let's have a look to the class() function to see type of the today variable. today is a "Date" object, a special kind of R object that represents dates. To get the current time in R, we use Sys (dot) time(). We get both the time and the date in a very clear format. Notice the difference in capitalization here. Sys (dot) Date() is written with a capital D while Sys (dot) time() is written with a small t. As you'd expect, also the variable now is not a simple string. Let's find out with the class() function. The important class here is POSIXct. Apart from providing rich functionality for calculus and formatting, this class makes sure that the dates and times in R are compatible accross different operating systems, according to the POSIX standard.
3. Create Date objects
Great, we know how to get the current date and time. What about creating Dates for other days? For example, let's say we want to get a Date object for May 14 in 1971. We can use the as (dot) Date() function to convert a character string to a Date. my_date is now an object of class Date. How did R know which elements of the string correspond to the day of the month, which to the month and which to the year? Let's see what happens if we scramble the order of the date elements.
4. Create Date objects
R fails. That's because as (dot) Date() tries some default data formats. It first tries the ISO date format, which is the most common around the globe. This format represents the year with four digits, dash, month as a 2 digit number, dash, day as a two digit number. Because our first character string had this format, R was able to convert the string to a Date. However, for the second example, R failed because the date couldn't be inferred. We can fix this by setting the format argument of as (dot) Date() explicitly. If we specify that the first part of our date is the Year, the second part is the day of the month and the third part is the month, we can have R understand what we mean. If we now print my_date, we see the same date as before, great! There are many more ways to format a date, for example using the full name of a month or a two digit year. You can find a comprehensive list in the interactive exercises.
5. Create POSIXct objects
To convert a string denoting an exact time, we can use the function as (dot) POSIXct(). Once again you could use the format argument inside as (dot) POSIXct to convert character strings with a different layout.
6. Date arithmetic
The cool thing about R objects from the Date and POSIXct classes is that you can do calculations with them. Consider my_date, which we created from a character string earlier. If we simply increment my_date with 1, R will increment the date by 1 day, giving us the 15th of May in 1971. Say we now want to know the difference between the 29th of September in 1998 and my_date. We first create a new data object, my_date2, from a character string. Next, we can simply do a subtraction, calculating the difference in days. There appears to be a time difference of exactly 10000 days, what a coincidence!
7. POSIXct arithmetic
Computations with POSIXct objects happen in the exact same fashion. The only difference is that the "time unit" of POSIXct is not a day as for Date objects, but is a second. Suppose we increment the my_time object we created earlier by 1. We get the following time, so we're one second further in time now. To get the difference between times, let's create a new time, and calculate the difference with my_time. Because the time difference is so large, R simply displays the time difference in days. For any time difference, R will automatically display an easily interpretable time difference.
8. Under the hood
How is R able to do all these calculations so seamlessly? Well, under the hood, R represents dates and times as simple numerics. A Date object is simply a more advanced representation of the number of days since the first of January in 1970. If we unclass the my_date object, thus converting it from a Date to a numeric, we see the number 498, because the 14th of May in 1971 is exactly 498 days from the first of January in 1970. If you're calculating the difference between two days, in fact you're simply calculating the difference between numerical values, and that's something R is particularly good at. The same holds for the POSIXct objects, which are actually simple numerics that hold the number of seconds since the first of January in 1970 at midnight.
9. Dedicated R Packages
Now you know how R handles times and dates behind the scenes, you should have a clear idea of what you can and can't do with dates in R. Now R wouldn't be R if there weren't dedicated packages to deal with times in a more advanced fashion. If you want to learn more, You can check out the lubridate, zoo and xts packages, they're really neat. Time to head over to the exercises now!
  10. Let's practice!
  
  
Exercise

Right here, right now
In R, dates are represented by Date objects, while times are represented by POSIXct objects. Under the hood, however, these dates and times are simple numerical values. Date objects store the number of days since the 1st of January in 1970. POSIXct objects on the other hand, store the number of seconds since the 1st of January in 1970.
The 1st of January in 1970 is the common origin for representing times and dates in a wide range of programming languages. There is no particular reason for this; it is a simple convention. Of course, it's also possible to create dates and times before 1970; the corresponding numerical values are simply negative in this case.

Instructions

• Ask R for the current date, and store the result in a variable today.
• To see what today looks like under the hood, call unclass() on it.
• Ask R for the current time, and store the result in a variable, now.
• To see the numerical value that corresponds to now, call unclass() on it.


# Get the current date: today
today <- Sys.Date()
# See what today looks like under the hood
unclass(today)
# Get the current time: now
now <- Sys.time()
# See what now looks like under the hood
unclass(now)

Exercise
Create and format dates
To create a Date object from a simple character string in R, you can use the as.Date() function. The character string has to obey a format that can be defined using a set of symbols (the examples correspond to 13 January, 1982):
  • %Y: 4-digit year (1982)
• %y: 2-digit year (82)
• %m: 2-digit month (01)
• %d: 2-digit day of the month (13)
• %A: weekday (Wednesday)
• %a: abbreviated weekday (Wed)
• %B: month (January)
• %b: abbreviated month (Jan)
The following R commands will all create the same Date object for the 13th day in January of 1982:
  as.Date("1982-01-13")
as.Date("Jan-13-82", format = "%b-%d-%y")
as.Date("13 January, 1982", format = "%d %B, %Y")
Notice that the first line here did not need a format argument, because by default R matches your character string to the formats "%Y-%m-%d" or "%Y/%m/%d".
In addition to creating dates, you can also convert dates to character strings that use a different date notation. For this, you use the format() function. Try the following lines of code:
  today <- Sys.Date()
format(Sys.Date(), format = "%d %B, %Y")
format(Sys.Date(), format = "Today is a %A!")

Instructions

• Three character strings representing dates have been created for you. Convert them to dates using as.Date(), and assign them to date1, date2, and date3 respectively. The code for date1 is already included.
• Extract useful information from the dates as character strings using format(). From the first date, select the weekday. From the second date, select the day of the month. From the third date, you should select the abbreviated month and the 4-digit year, separated by a space.

# Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"
# Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date2 <- as.Date(str2)
date3 <- as.Date(str3, format = "%d/%B/%Y")

# Convert dates to formatted strings
format(date1, "%A")
format(date2, "%d")
format(date3, "%b %Y")
#Print date1 date2 date3
date1 
date2
date3

Exercise
Create and format times
Similar to working with dates, you can use as.POSIXct() to convert from a character string to a POSIXct object, and format() to convert from a POSIXct object to a character string. Again, you have a wide variety of symbols:
  • %H: hours as a decimal number (00-23)
• %I: hours as a decimal number (01-12)
• %M: minutes as a decimal number
• %S: seconds as a decimal number
• %T: shorthand notation for the typical format %H:%M:%S
• %p: AM/PM indicator
For a full list of conversion symbols, consult the strptime documentation in the console:
  ?strptime
Again,as.POSIXct() uses a default format to match character strings. In this case, it's %Y-%m-%d %H:%M:%S. In this exercise, abstraction is made of different time zones.

Instructions

	• Convert two strings that represent timestamps, str1 and str2, to POSIXct objects called time1 and time2.
	• Using format(), create a string from time1 containing only the minutes.
	• From time2, extract the hours and minutes as "hours:minutes AM/PM". Refer to the assignment text above to find the correct conversion symbols!


# Definition of character strings representing times
str1 <- "May 23, '96 hours:23 minutes:01 seconds:45"
str2 <- "2012-3-12 14:23:08"
# Convert the strings to POSIXct objects: time1, time2
time1 <- as.POSIXct(str1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
time2 <- as.POSIXct(str2)

# Convert times to formatted strings
format(time1, format = "%M")
format(time2, format = "%I:%M %p")

Exercise

Calculations with Dates
Both Date and POSIXct R objects are represented by simple numerical values under the hood. This makes calculation with time and date objects very straightforward: R performs the calculations using the underlying numerical values, and then converts the result back to human-readable time information again.
You can increment and decrement Date objects, or do actual calculations with them:
today <- Sys.Date()
today + 1
today - 1
as.Date("2015-03-12") - as.Date("2015-02-27")
To control your eating habits, you decided to write down the dates of the last five days that you ate pizza. In the workspace, these dates are defined as five Date objects, day1 to day5. A vector pizza containing these 5 Date objects has been pre-defined for you.

Instructions

	• Calculate the number of days that passed between the last and the first day you ate pizza. Print the result.
	• Use the function diff() on pizza to calculate the differences between consecutive pizza days. Store the result in a new variable day_diff.
	• Calculate the average period between two consecutive pizza days. Print the result.
	
Code 

# day1, day2, day3, day4 and day5 are already available in the workspace

# Difference between last and first pizza day
as.Date(day5)- as.Date(day1)
# Create vector pizza
pizza <- c(day1, day2, day3, day4, day5)

# Create differences between consecutive pizza days: day_diff
day_diff <- diff(pizza)

# Average period between two consecutive pizza days
mean(day_diff)

Exercise
Calculations with Times
Calculations using POSIXct objects are completely analogous to those using Date objects. Try to experiment with this code to increase or decrease POSIXct objects:
now <- Sys.time()
now + 3600          # add an hour
now - 3600 * 24     # subtract a day
Adding or subtracting time objects is also straightforward:
birth <- as.POSIXct("1879-03-14 14:37:23")
death <- as.POSIXct("1955-04-18 03:47:12")
einstein <- death - birth
einstein
You're developing a website that requires users to log in and out. You want to know what is the total and average amount of time a particular user spends on your website. This user has logged in 5 times and logged out 5 times as well. These times are gathered in the vectors login and logout, which are already defined in the workspace.
Instructions

• Calculate the difference between the two vectors logout and login, i.e. the time the user was online in each independent session. Store the result in a variable time_online.
• Inspect the variable time_online by printing it.
• Calculate the total time that the user was online. Print the result.
• Calculate the average time the user was online. Print the result.

# Calculate the difference between login and logout: time_online
time_online <- logout - login
# Inspect the variable time_online
time_online
# Calculate the total time online
tot_time_online <- sum(time_online)
# Calculate the average time online
mean(time_online)

Exercise
Time is of the essence
The dates when a season begins and ends can vary depending on who you ask. People in Australia will tell you that spring starts on September 1st. The Irish people in the Northern hemisphere will swear that spring starts on February 1st, with the celebration of St. Brigid's Day. Then there's also the difference between astronomical and meteorological seasons: while astronomers are used to equinoxes and solstices, meteorologists divide the year into 4 fixed seasons that are each three months long. (source: www.timeanddate.com)
A vector astro, which contains character strings representing the dates on which the 4 astronomical seasons start, has been defined on your workspace. Similarly, a vector meteo has already been created for you, with the meteorological beginnings of a season.

Instructions

• Use as.Date() to convert the astro vector to a vector containing Date objects. You will need the %d, %b and %Y symbols to specify the format. Store the resulting vector as astro_dates.
• Use as.Date() to convert the meteo vector to a vector with Date objects. This time, you will need the %B, %d and %y symbols for the format argument. Store the resulting vector as meteo_dates.
• With a combination of max(), abs() and -, calculate the maximum absolute difference between the astronomical and the meteorological beginnings of a season, i.e. astro_dates and meteo_dates. Simply print this maximum difference to the console output.

# Convert astro to vector of Date objects: astro_dates
astro_dates <- as.Date(astro, format= "%d-%b-%Y")
# Convert meteo to vector of Date objects: meteo_dates
meteo_dates <- as.Date(meteo, format= "%B %d, %y")
# Calculate the maximum absolute difference between astro_dates and meteo_dates
max(abs(astro_dates - meteo_dates))







