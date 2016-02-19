# Ruby Reflection 4.2

## What does puts do?

`puts` will print what you tell it, and then returns nil afterwards (However in Cloud9 it doesn't seem to do that)
There are several ways to get ruby to put something back on the terminal once it's done running. So far I am aware of p, puts, and print. Puts and print are very similiar where they will return nil and print the output. Puts will then reutrn a new line whereas print will now. 

## What is an integer? What is a float?

Integerts are whole numbers that contain no decimal points. Floats are numbers including decimal points. Both can range from negative numbers to positive numbers. 

## What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

How both do calculations are slightly different. Floats will return the full value (generally [Wikipedia Article: 0.999...](https://en.wikipedia.org/wiki/0.999...) ) 
So if you were to put into ruby `puts 9 / 2` it will surprise you by returning 4. This is because an integer will round down to the nearest whole number. However, simple adding decimal points to the problem will yield the correct answer of 4.5. 

A simple way to remember the differences between the two is to think about real life scenarios you'd need integers or floats in. 

When you are pulling apples form a tree, do you want to pull down 10 apples, or 10.2384 apples? `integer`

When slicing up a pie (quantity of 1) how can you slice that into 10 pieces? `float` 

# Release 2: 

## Calculate the hours in a year

```ruby
seconds_in_minute = 60
minutes_in_hour = 60
hour_in_day = 24 
day_in_year = 365
year_in_decade = 10

puts hour_in_day * day_in_year 
```
#### Answer 
```
:> ruby calc.rb 
8760
```
## Calculate mintutes in a decade
```ruby 
seconds_in_minute = 60
minutes_in_hour = 60
hour_in_day = 24 
day_in_year = 365
year_in_decade = 10

puts minutes_in_hour * hour_in_day * day_in_year * year_in_decade 
```

#### Answer
```
:> ruby calc.rb 
5256000
```

## How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles these mathematic actions just as a calculator would. The only difference between a calculator and Ruby is that with Ruby you have to specify what kind of number it is: integer or a float. 

## What is the difference between integers and floats?
It's how Ruby counts. Use Integers for whole numbers and use floats when decimals are involved. 

## What is the difference between integer and float division?

Please see my answer above on line #12 

## What are strings? Why and when would you use them?

Strings are groups of characters in Ruby. You always know what is a string beause you see it wrapped around single  ` ' ' `or double quotes ` " " `. 

You can use them for getting a user input or for storing word lists in an array. There are many uses! 

## What are local variables? Why and when would you use them?

A local variable is the simple little variables we've been declaring so far, such as `kitten_collection = 100` You use them for when  you want to store a value so it can be used again and again. It's considered a local variable because of it's range of scope. If you have a file like `collection.rb` that has the variable listed above, `kitten_collection = 100 `. That variable can only be used in that file. This is different from global variables, which can have a further reaching scope. 

## How was this challenge? Did you get a good review of some of the basics?
Yes, I enjoyed the hunt to finding functions in Ruby to solve the problem! 
Rspec is still kind of confusing. I will continue reading more about it, and going through CodeSchool's [Testing with Rspec](http://rspec.codeschool.com/) lesson. 

# 4.2 Challenge Solution Files
https://github.com/mintii/phase-0/blob/master/week-4/defining-variables.rb

https://github.com/mintii/phase-0/blob/master/week-4/simple-string.rb

https://github.com/mintii/phase-0/blob/master/week-4/basic-math.rb
