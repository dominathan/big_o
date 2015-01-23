require 'pry'
def fibonacci(num)
  return 0 if num == 0
  return num if num <= 1
  fibonacci(num-1) + fibonacci(num-2)
end

def factorial(num)
  return num if num <= 1
  num*factorial(num - 1)
end

                      #fibonacci(5)

              #fibonacci(4) + fibonacci(3)

        #fibonacci(3)  + fibonacci(2)

          #fibonacci(2) + fibonacci(1)

        #fibonacci(1)
