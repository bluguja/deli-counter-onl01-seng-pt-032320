# Write your code here.
katz_deli = ["Logan", "Avi", "Spencer"]

def line(array) 
  if array.length >= 1
    new_arr = []
    counter = 1 # init counter
    array.each do |name|
      new_arr.push("#{counter}. #{name}")
      counter += 1 
    end 
    puts "The line is currently: #{new_arr.join(" ")}"
  
  else
    puts "The line is currently empty."
  end
end

line(katz_deli)

def line_simple(array) 
  current_line = "The simple line is currently:"
  array.each.with_index(1) do |val, indexes|  
  
    current_line << " #{indexes}. #{val} "    
     
  end 
  puts current_line
end 
  

def take_a_number(line, new_person)
  line.push(new_person) # could say: "line << new_person"
  puts "Welcome, #{new_person}. You are number #{line.length} in line."
end

take_a_number(katz_deli, "Matz")

def now_serving(line)
  if line.length == 0 # could say: "if deli.empty?"
    puts"There is nobody waiting to be served!"
  else
    puts "Currently serving #{line[0]}." # could say: "Currently serving #{line.first}."
    line.shift # this works in the IDE but no on repl.it
  end
end

puts now_serving(katz_deli)
puts katz_deli

