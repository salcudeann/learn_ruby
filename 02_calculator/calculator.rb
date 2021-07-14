def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(a)
  sum_val = a.inject(0, :+)

  sum_val
end

def multiply(a)
  prod_val = a.inject(1, :*)

  prod_val
end

def power(a, b)
  nr = a ** b
  nr
end

def factorial(x)
  val = 1;

  for i in 1..x
    val *= i
  end

  val
end