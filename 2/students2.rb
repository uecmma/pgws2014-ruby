students = [
  {:name => "masawada", :degree => "bachelor"},
  {:name => "alstamber", :degree => "master"},
  {:name => "aru", :degree => "master"},
  {:name => "mitu217", :degree => "bachelor"},
  {:name => "tarama13", :degree => "bachelor"},
  {:name => "gepuro", :degree => "master"},
  {:name => "whywaita", :degree => "bachelor"},
  {:name => "staybuzz", :degree => "bachelor"},
  {:name => "mernao", :degree => "master"},
]

puts "master students: "
students.each do |student|
  if student[:degree] == "master" then
    puts "#{student[:name]}"
  end
end
