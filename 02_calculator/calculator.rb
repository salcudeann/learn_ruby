def add(x, y)
  x+y
end

def subtract(x, y)
  x-y
end

def sum(a = Array)
  sumVal = 0;
  for i in 0..a.size-1
    sumVal += a[i]
  end

  sumVal
end

def multiply(a = Array)
  prodVal = 1;

  if a.size == 1
    prodVal = a[0]*a[1]
  else
    for i in 0..a.size-1
      prodVal = prodVal*a[i]
    end
  end

  prodVal
end

def power(a,b)
  # a^b
  nr = 1;
  while b > 0
    nr *= a
    b = b-1
  end

  nr
end

def factorial(x)
  val = 1;

  for i in 1..x
    val *=i;
  end

  val;
end