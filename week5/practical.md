# Week 5: These are testing times!

It's time to talk about testing. 

### 1. In teams...

It's time to ensure that all your units (routes/web pages, models, and any
additional Ruby methods - sometimes called library methods - you may have
written) are being tested. 

Start to think about your end to end tests. Choose end to end tests that satisfy
your user stories (acceptance tests) and other paths through the system that
check it behaves correctly as well as not behaving incorrectly. 

_Don't_ make one person in your team do all the testing. That's just lazy group
organisation. Developers should write unit tests for the code they're writing,
and you should all contribute to the end to end tests to ensure a good level of
overall coverage. It's a good idea to have someone who is in charge of ensuring
tests are being written and that they're of good quality. 

### 2. In pairs within your team...

First of all, go to where you've cloned the COM1001 repository on Codio and do a
`git pull`.

In the `unit_testing` directory, you'll find a file `triangle.rb` with a method
called `classify` that aims to classify a triangle based on the length of its
three sides. For those who can't remember, a triangle is classed as
"equilateral" if all three sides are equal, "isosceles" if exactly two of its
sides are equal, and "scalene" otherwise. The three sides may also represent an
invalid triangle, of course.

Using RSpec, write tests for the method. Ensure you properly document the
scenarios you're testing, using `context` and `it` descriptions.

The implementation of `classify` contains at least one bug. Did you find it? If
not, keep testing! If you did, debug the method. Where is the defect? How does
it cause the method to fail? Fix the bug. Do you tests now all pass?
