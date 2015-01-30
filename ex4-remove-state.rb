# Coding declaratively
# This script prints a car race to screen. Each grouping of three represents car positions after each lap. 

## RUN THIS SCRIPT TO SEE WHAT THIS GAME DOES.

def game
  time = 5
  car_positions = Array.new(3, 1)

  while time >= 0
    time -= 1

    puts
    (car_positions.length).times do |i|
      car_positions[i] += 1 if rand(0..5) > 3

      puts "#{i} #{'-' * car_positions[i]}"
    end

  end
end

## Implement your functional solution below. Be sure to keep in mind our 'considerations' from the README.
