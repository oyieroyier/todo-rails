Todo.destroy_all

puts 'Badda bing...'
20.times do
  title = Faker::Job.title
  description = Faker::ChuckNorris.fact
  Todo.create(title: title, description: description)
end
puts '...bada boom!'
