require_relative 'input'

def solution_one
  input_array = InputData::INPUT

  solution = input_array.each_with_index.reduce(0) do |sum, (item, index)|
    if index > 0 && (item > input_array[index-1])
      sum + 1
    else
      sum
    end
  end

  puts "Answer to problem 1: #{solution}"
end

def solution_two
  input = InputData::INPUT.each_cons(3).with_index
  input_array = input.to_a

  solution = input.reduce(0) do |sum, (collection, index)| 
    if index > 0 && (collection.sum > input_array[index-1].first.sum)
      sum + 1
    else
      sum
    end
  end
  
  puts "Answer to problem 2: #{solution}"
end

def run_solutions
  solution_one
  solution_two
end

run_solutions