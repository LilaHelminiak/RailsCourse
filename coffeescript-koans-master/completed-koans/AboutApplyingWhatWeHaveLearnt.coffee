should = require('chai').should() # import Chai.js matchers
FILL_ME_IN = 'Fill this value in' # Don't touch this one!

describe 'About Applying What We Have Learnt', ->
  operations = [
    { direction: 'RT', distance: 200}
    { direction: 'FWD', distance: 50}
    { direction: 'RT', distance: 100}
    { direction: 'RT', distance: 20}
    { direction: 'FWD', distance: 200}
    { direction: 'RT', distance: 10}
  ]

  it 'should find a needle in a haystack (imperative)', ->
    findNeedle = (ops) ->
      hasInvalidOperation = false
      for i in [0..ops.length-1]
        if (ops[i].direction == 'FWD' && ops[i].distance > 100)
          hasInvalidOperation = true
          break
      return hasInvalidOperation

    findNeedle(operations).should.equal true

  xit 'should find needle in a haystack (functional)', ->
    # FILL_ME_IN solution goes in here
    # HINT: one way of doing this would be a 'for in when' construct using sum and
    # filter functions, the existential operator is also useful
    findNeedle(operations).should.equal true

  it 'should add all the natural numbers below 1000 that are multiples of 3 or 5 (imperative)', ->
    total = 0
    for i in [1..1000]
      if (i % 3 == 0 || i % 5 == 0)
        total += i
    total.should.equal 234168

  it 'should add all the natural numbers below 1000 that are multiples of 3 or 5 (functional)', ->
    numbers = [1..1000]
    divisible3or5 = (a) -> a % 3 is 0 or a % 5 is 0 # shorter version
    multiples3or5 = (x for x in numbers when divisible3or5 x) 
    total = 0
    sum = (a) -> total = total + a
    sum x for x in multiples3or5
    total.should.equal 234168

  it 'should find the sum of all the even valued terms in the fibonacci sequence which do not exceed four million (imperative)', ->
    sum = 0
    fib = [0, 1, 1]
    i = 3
    currentFib = 0

    # Note, the condition in the while loop isn't strictly necessary, as the first fib
    # >4m is actually odd, but it is good practice for avoiding fencepost errors
    while (currentFib = fib[i] = fib[i-1] + fib[i-2]) < 4000000
      if (currentFib % 2 == 0)
        sum += currentFib
      i+=1

    sum.should.equal 4613732

  it 'should find the sum of all the even valued terms in the fibonacci sequence which do not exceed four million (functional)', ->
    # FILL_ME_IN solution goes in here
    # HINT: one way of doing this would be to construct an array of Fibonacci numbers
    # using a function and a while loop, and then to filter it using an even function
    
    fibFunc = ( (x, z) -> x[z-1] + x[z-2])
    fib = [0,1]
    i = fib.length
    while (currentFib = fibFunc( fib, i) )< 4000000
      fib.push(currentFib)
      i+=1
    
    even = (a) -> a % 2 is 0
    evenFib = fib.filter(even)
    
    total = 0
    sum = (a) -> total = total + a
    sum x for x in evenFib
    total.should.equal 4613732  
      

###
# UNCOMMENT FOR EXTRA CREDIT
  it 'should find the largest prime factor of a composite number', ->

  it 'should find the largest palindrome made from the product of two 3 digit numbers', ->

  it 'should what is the smallest number divisible by each of the numbers 1 to 20', ->

  it 'should what is the difference between the sum of the squares and the square of the sums', ->

  it 'should find the 10001st prime', ->
###
