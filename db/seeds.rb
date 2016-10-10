  Character.create(name: 'Luke', movie: movies.first)
100.times do |n|
  Student.create(first_name: "first_name #{n}", last_name: "last_name #{n}", gender: "male")
end
