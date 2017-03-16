array= [5,10,15,20,25,30]


def search_array(arr,num)
  found = false
  count = 0
  arr.each do |number|
    if number == num
      found = true
		  return count
		end
		count += 1
  end
  if found = false 
	  puts "nil"
	end
end


def fib(num)
  array_fib = [0,1]
  count = 1
  while count < num
    prev_num = array_fib[count] + array_fib[count - 1]
    array_fib.push(prev_num)
    count += 1
  end
  return array_fib.slice(0...-1)
end


## 1. We chose to research bubble sort
## 2. We both worked through the code line by line and broke it down to understand 
## the values. We also learned about how values in arrays can be swapped using a comma.
## Visualizations can be helpful conceptually, but we found that understanding how the 
## arrays were sorted by looking through the code was most effective. We were able to find
## the right materials by searching through many websites.
## 3. We found that this exercise was interesting and our curiosity made the exercise
## more enjoyable.


## 4. We create a sample array of random numbers in a random order.
## We create a method and get the length of the array.
## We create a loop.
## We compare values.
## We swap values if the first is greater than the second value in the array. 
## The loop ends when the values are in ascending order.
## The method returns the array.



arr = [51,22,13,24,5]


def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

bubble_sort(arr)