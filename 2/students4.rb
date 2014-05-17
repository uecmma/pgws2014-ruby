def print_student(name, value_name, value)
  puts "#{name}'s #{value_name} is #{value}"
end

students = [
  {:name => "masawada",  :degree => "bachelor", :grade => 3},
  {:name => "alstamber", :degree => "master",   :grade => 1},
  {:name => "aru",       :degree => "master",   :grade => 1},
  {:name => "mitu217",   :degree => "bachelor", :grade => 3},
  {:name => "tarama13",  :degree => "bachelor", :grade => 2},
  {:name => "gepuro",    :degree => "master",   :grade => 2},
  {:name => "whywaita",  :degree => "bachelor", :grade => 2},
  {:name => "staybuzz",  :degree => "bachelor", :grade => 2},
  {:name => "mernao",    :degree => "master",   :grade => 1},
]

students.each do |student|
  print_student(student[:name], :degree, student[:degree])
end

puts

students.each do |student|
  puts "#{student[:name]}'s grade is #{student[:grade]}"
end


