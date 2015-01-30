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

# Constants
DEFAULT_ROUNDS = [Array.new(3, 1)]
DEFAULT_TIME = 4
NEWLINE = "\n"

# Game functions

def should_move_position?
  rand(0..5) > 3
end

def move_positions(round)
  round.map { |position| position + (should_move_position? ? 1 : 0) }
end

def add_round(rounds)
  rounds << move_positions(rounds.last)
end

def functional_game(time = DEFAULT_TIME, rounds = DEFAULT_ROUNDS)
  time >= 0 ? functional_game(time - 1, add_round(rounds)) : rounds
end

# String conversion functions

def position_to_s(position, index)
  "#{index} #{'-' * position}"
end

def round_to_s(round)
  round.each.with_index.map(&method(:position_to_s)).join(NEWLINE)
end

def rounds_to_s(rounds)
  rounds.map(&method(:round_to_s)).join(NEWLINE * 2)
end

# Main
puts rounds_to_s functional_game
