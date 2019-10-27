def fibonacci(number)
  if number == 0
    0
  elsif number == 1
    1
  else
    fibonacci(number-1) + fibonacci(number-2)
  end
end

n = 35
puts fibonacci(35)

def recursive_fibonacci(n)
  if n < 2
    n
  else
    recursive_fibonacci(n - 1) + recursive_fibonacci(n - 2)
  end
end

puts recursive_fibonacci(35)

def iterative_fibonacci(num)
  a = 0
  b = 1
  num.times do
    fib = a
    a = b
    b = fib + b
  end
  return a
end

puts iterative_fibonacci(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fibonacci") { recursive_fibonacci(n) }
  x.report("iterative_fibonacci")  { iterative_fibonacci(num)  }
end