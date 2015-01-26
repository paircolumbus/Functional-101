# Pipelining
# The job of pipelines is to pass each piece of data to a transformation function. Each returned value will then be passed to the next function.


bands = [
    {'name' => 'sunset rubdown', 'country' => 'UK', 'active' => false},
    {'name' => 'women', 'country' => 'Germany', 'active' => false}, 
  {'name' => 'a silver mt. zion', 'country' => 'Spain', 'active' => true}
]

def format_bands(bands)
  bands.each do |band| 
    band['country'] = 'Canada'
    band['name'] = band['name'].gsub(/\./, '')
    band['name'] = band['name'].capitalize
  end
end

# Implement your functional solution below and take into account our "Things to consider" from the README. Your solution should include a pipeline function that utilizes several transformation functions. Ask for a code review when you're done.

def pipeline_each(bands)
  # your solution here
end

# your solution here
