def get_input
  File.readlines('2021/days/two/input.txt', chomp: true)
end

def solution_one
  input = get_input
  overall_change = Hash.new(0)

  input.each do |change|
    direction, scale = change.split
    overall_change[direction] += scale.to_i
  end

  depth_change = overall_change['down'] - overall_change['up']
  horizontal_change = overall_change['forward']

  puts horizontal_change * depth_change
end

def solution_two
  input = get_input
  overall_change = Hash.new(0)

  input.each do |change|
    direction, movement = change.split
    scale = movement.to_i

    case direction
    when 'down'
      overall_change[:aim] += scale
    when 'up'
      overall_change[:aim] -= scale
    when 'forward'
      overall_change[:forward] += scale
      overall_change[:depth] += overall_change[:aim] * scale
    end
  end

  puts overall_change[:forward] * overall_change[:depth]
end

def run_solutions
  solution_one
  solution_two
end

run_solutions
