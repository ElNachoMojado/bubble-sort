def bubble_sort(array)
  #Loop through the array a number of N-1 times
  (array.length - 1).times do
  #For each current number, check if next one is bigger
    array.each_with_index do |num, index|
  #Prevents error in case the bubble tries to leave array
      if index == array.length - 1
        break
  #If current num is bigger, switch the values
      elsif num > array[index+1]
        array[index] = array[index+1]
        array[index+1] = num
      end
    end
  end
  array
end

puts "How big is your numbers array?"
array_size = gets.to_i

array = Array.new(array_size) {rand(100)}
puts "Before: #{array}"
puts "After: #{bubble_sort(array)}"