students = [
  {:name => "masawada", :degree => "bachelor"},
  {:name => "alstamber", :degree => "master"},
]

students.each do |student|
  puts "#{student[:name]}'s degree is #{student[:degree]}"
end
