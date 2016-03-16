# One-to-one Relationship
![one-to-one-relationship](../imgs/one-to-one-relationship.png)
Thi is a one-to-one relationship because we have one apartment building, and we 
have one Unit A apartment in this particular building. We could also have other 
apartment buildings, but maybe they use different number systems for their apartments
and therefore Unit A would not be needed. 

# Many-to-many Relationship
![many-to-many-relationship](../imgs/many-to-many-relationship.png)

# Reflection

## 1. What is a one-to-one database?

One-to-one relationships are used when two things have a single relationship to 
one another. It's good to think of them as dependent on each other, but there's 
still room for one table to be null (like with table on countries and a second 
table on capitals. Capitals would certainly go with countries, but not all 
countries have a capital city.). 
 
## 2. When would you use a one-to-one database? 
## (Think generally, not in terms of the example you created).

You would create a one-to-one database when there is a pair of data that while related
are narrating different views on the data. You may want to keep a database of 
people and their residence info and their car. They certainly have one house, but 
what if they keep multiple cars? By moving cars to their own table, it allows for 
the data to remain DRY and grouped specifically. 

## 3. What is a many-to-many database?
This type of database is used when you have many points of data pointing to other 
multiple points. 

## 4. When would you use a many-to-many database? (Think generally, not in 
terms of the example you created).

When you see there's a pattern of two or more pieces of data repeating itself across
many columns. It may be better to break them off into smaller tables where the data
is succinct. 

## 5. What is confusing about database schemas? What makes sense?
I kept thinking more in terms of rows and columns, when database schemas are 
really columns compared to more columns. It also reminds me of working on research
in psychology and building up our results into a large spreadsheet and crunching
trends acrsos the columns. 
It's good to remember when building schemas, your foreign key can only be numbers. 
