def fib(num)
  array = [0, 1]
  3.upto(num) do
    array.push(array[-1] + array[-2])
  end
  array
end

def fib_rec(num, arr = [0, 1])
  return if num <= 2

  arr.push(arr[-1] + arr[-2])
  fib_rec(num - 1, arr)
  arr
end

p fib(10)
p fib_rec(10)
