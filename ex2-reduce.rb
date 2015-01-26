# Reduce
## Exercise 2

sent = ["Mary read a story to Sam and Isla.", "Isla cuddled Sam.", "Sam chortled."]
sum = 0
sent.each do |s|
  sum += 1 if s.include?('Sam')
end

#Create a functional example that returns the sum of occurences of 'Sam'.


## Implement your code below
