def take_a_number(queue, name)
    queue << name
    puts "Welcome, #{name}. You are number #{queue.length} in line."
end

def line(queue)
    string = "The line is currently"
    if queue.length == 0
        string << " empty."
    else
       string << ":" 
       queue.each.with_index(1) do |name, index| 
        string << " #{index}. #{name}"
       end
    end
    puts string 
end

def now_serving(queue)
    if queue.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{queue.shift}."
    end
end