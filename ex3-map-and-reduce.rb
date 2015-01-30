# Use Map & Reduce
# 'The code in a loop may affect variables defined before it or code that runs after it. By convention, maps and reduces are functional.' -Mary Rose Cook

# Exercise 3

people = [
  {name: 'Mary', height: 160},
  {name: 'Isla', height: 80},
  {name: 'Sam'}
]

# Compute the average height of the objects (that have a height) using a combination of map & reduce. 

## Implement your code below

def heights(people)
  people.map { |person| person[:height] }.compact
end

puts heights(people).reduce(&:+) / heights(people).length
