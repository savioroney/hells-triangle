# hells-triangle

Hells Triangle - Challenge

Given a triangle of numbers, find the maximum total from top to bottom
Example:

       6
      3 5
     9 7 1
    4 6 8 4
  
In this triangle the maximum total is: 6 + 5 + 7 + 8 = 26

An element can only be summed with one of the two nearest elements in the next row.

For example: The element 3 in the 2nd row can only be summed with 9 and 7, but not with 1

Your code will receive an (multidimensional) array as input.

The triangle from above would be:

    example = [[6],[3,5],[9,7,1],[4,6,8,4]]
    
## Programming language

To implement the solution of the problem was used the language [Ruby](https://www.ruby-lang.org). 

Ruby was chosen for meeting the solution assessment requirements for the challenge:

    1- Focus on simplicity and productivity
    2- It has elegant syntax of natural reading and easy writing
    3- It offers resources for implementation of automated tests

## Building and Running

To build and run the solution, follow the steps below.

### Bundle

For installation of the dependencies it will be necessary to install the [Bundle](http://bundler.io/). After installation, run:
    
    bundle install

### Cucumber

To create the BDD feature was used [Cucumber](https://cucumber.io/). 

Feature for solution [get_maximum_total_triangle.feature](https://github.com/savioroney/hells-triangle/blob/master/src/test/features/get_maximum_total_triangle/get_maximum_total_triangle.feature):

    Feature: Get maximum total to triangle
    
      Scenario: To get value Maximum Total
        Given a triangle with values:
          | 6       |
          | 3,5     |
          | 9,7,1   |
          | 4,6,8,4 |
        When to obtain total maximum value
        Then should return the value: 26


Run in the features directory:

    cucumber

### Unit Test

To run the unit test of the solution, run:

    ruby -I test src/test/models/triangle_test.rb
