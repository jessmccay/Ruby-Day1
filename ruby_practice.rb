
# Arithmetic Challenge

Remember that floats are numbers with a decimal point whereas integers have no fractional part so in Ruby, 1 and 1.0 are different types of things with slightly different behaviors.

Just as you did with Javascript, try these, both with integers and floats:

Add, subtract, multiply and divide some numbers any combination of numbers
Find the remainder of dividing two numbers using the modulo operator (%)
Divide a number by 0
Divide 0 by 0

5 / 2 #=> 2
>> 5.0 / 2 #=> 2.5
>> 5 * 2 #=> 10
>> 5.0 * 2 #=> 10.0
>> 5.3 * 2.1 #=> 11.13
>> 5.1 + 3.1  #=> 8.2
>> 100 + 200 #=> 300
>> 5.0 - 2.1 #=> 2.9
>> 5 - 2.1 #=> 2.9
>> 45 % 7  #=> 3
>> 45  % 7.5  #=> 0.0
>> 45 % 7.5  #=> 0.0
>> 46 % 7.5 #=> 1.0
>>
103 / 0
Variables Challenge

Here are a few exercises for you to practice using variables:

Set a variable called my_favorite_number equal to your favorite number.
Calculate what your favorite number divided by 2 is.
Set another variable called somones_favorite equal to 13
Change the value of someones_favorite to 7
Subtract your favorite number from someones
Change the value of my favorite number to be 26 times its current value
my_favorite_number = 7  #=> 7
>> my_favorite_number / 2  #=> 3
>> someones_favorite = 13 #=> 13
>> someones_favorite = 7 #=> 7
>> someones_favorite - my_favorite_number #=> 0
>> my_favorite_number * 26 #=> 182
>>
Strings Challenge

For this exercise, try out some of the Ruby string methods for yourself.

.upcase
.reverse
.include?
capitalize
create a variable and put it into a string using string interpolation

>> w = "welcome" #=> "welcome"
>> w.upcase #=> "WELCOME"
>> w.reverse #=> "emoclew"
>> w.upcase.reverse #=> "EMOCLEW"
>> w.include?
  w = "Welcome" #=> "Welcome"
 >> puts "#{w} Thanks for your sweetness" #=> nil
 Welcome Thanks for your sweetness
 w.include? "thanks" #=> false
>> w.include? "we" #=> true

 Arrays Challenge

 Read the introductory information about the pretty comprehensive set of Array features Ruby has.

 Create an array with ten of your favorite movies
 From that array, extract your top 3 movies in a new array (Hint: .select)
 => ["Titanic", "Wizard of Oz", "Psycho", "Captain America", "Superman", "Toy Story", "Sound of Music", "Twilight", "Joy", "Batman"]
 >> fav_movies.select {|item| item == "Titanic" || item == "Joy" || item == "Batman"}
 => ["Titanic", "Joy", "Batman"]


 Find an expression that tells you how many elements are in the array
 > ["Psycho", "Superman"]
>> fav_movies.length #=> 10

 Reverse an array, try out slices, how to rotate them, and how to get a random element from the array
 fav_movies
 fav_movies.reverse
=> ["Batman", "Joy", "Twilight", "Toy Story", "Sound of Music", "Superman", "Captain America", "Psycho", "Wizard of Oz", "Titanic"]
 fav_movies.slice(4..8)
=> ["Superman", "Sound of Music", "Sound of Music", "Twilight", "Joy"]
>> fav_movies[6] = "Toy Story" #=> "Toy Story"
>> fav_movies
=> ["Titanic", "Wizard of Oz", "Psycho", "Captain America", "Superman", "Sound of Music", "Toy Story", "Twilight", "Joy", "Batman"]
>> fav_movies.slice(4,6)
=> ["Superman", "Sound of Music", "Toy Story", "Twilight", "Joy", "Batman"]
>> fav_movies.slice(4.6) #=> "Superman"
>> fav_movies.slice(4-6) #=> "Joy"
>> fav_movies.slice(3,3) #=> ["Captain America", "Superman", "Sound of Music"]
>> fav_movies.slice(2,4)
=> ["Psycho", "Captain America", "Superman", "Sound of Music"]


Ruby Decision Structures Challenge
Challenges:

1. Write a x =  Try it with all the loops covered in this lesson. Do it again counting down from 20 to 1.
Answer:

x = 0
20.times do
  puts x += 1
end

x = 21
20.times do
  puts x -= 1
end

x = 20
20.times do
  puts x
  x -= 1
end

2. Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

Answer:
def check(age)
  if age >= 1 && age <= 10
    puts "Valid"
  else
    puts "Invalid"
  end
end
> check(20) #=> nil
Invalid
>> check(10) #=> nil
Valid
>> check(5) #=> nil
Valid


4. Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz

Answer:
x = 0
100.times do
  x += 1
  if x % 3 == 0 && x % 5 != 0
    puts  "fizz"
  elsif x % 5 == 0 && x % 3 != 0
    puts "Buzz"
  elsif x % 3 == 0 && x % 5 == 0
    puts "FizzBuzz"
  else
    puts x
  end
end

5.Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

Answer:
def sum_these_numbers(int1,int2)
int1 + int2
end
>   sum_these_numbers(2,2) #=> 4
>> sum_these_numbers(4,10) #=> 14
>> sum_these_numbers 4,99 #=> 103

Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
Answer:
def is_even(number)
  number % 2 == 0
end
> is_even(7) #=> false
>> is_even 6 #=> true
>> is_even(12) #=> true
>> is_even 15 #=> false
>>

6.Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.
Answer:
words = ["Hey", "Hello", "Thanks", "sweet"]
words.each { |word| puts word.capitalize}

7.Write a method which calls another method, then uses its return value.

def how_long(a)
  puts a.length
end

8.Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.
Using if, elsif, and else blocks, write a function called rps_game which allows two users to input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).

def valid_date
  puts "Please enter a Day"
  day = gets.chomp
  puts "Please enter a Month"
  month = gets.chomp
  puts "Please enter a Year"
  year = gets.chomp
  if day.to_i >= 1 && day.to_i <= 31 && month.to_i >= 1 && month.to_i <= 12
    puts "true"
  else
    puts "false"
  end
end
