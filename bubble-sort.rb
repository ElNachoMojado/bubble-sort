def bubble_sort(array)
  (array.length - 1).times do
    array.each_with_index do |num, index|
      if index == array.length - 1
        break
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