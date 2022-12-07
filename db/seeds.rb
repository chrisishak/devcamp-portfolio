# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |x|
  Blog.create!(
    title: "My blog post #{x}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
     Phasellus sollicitudin ligula in mauris placerat eleifend. 
     Sed ultrices vitae massa at congue. Aenean at neque mi. 
     Donec dictum diam ac lorem vehicula, vel laoreet nunc suscipit.
      Sed nibh magna, tincidunt molestie ex vel, porta pellentesque justo. 
      Aliquam erat volutpat. Quisque vestibulum, ligula ut tincidunt pellentesque, massa diam commodo odio, eu iaculis libero est et lacus. 
      Donec nibh neque, consequat dictum nisl ac, viverra tempor mi. 
      Cras a justo quis nunc facilisis ultrices eu mattis massa. 
      Quisque leo lorem, egestas et elit at, cursus ultricies turpis. 
      Curabitur cursus lorem vel erat tincidunt posuere. 
      Nulla sit amet laoreet est, nec rhoncus ligula. 
      Etiam justo mi, semper at nulla sed, finibus placerat sapien. 
      Vestibulum posuere venenatis efficitur. Proin dictum pulvinar euismod. Ut lobortis eget purus a efficitur."
  	)
end

puts "10 blogs created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
        percent_utilized: 15
		)
end

puts "5 skills created"


9.times do |portfolio_item|
	Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "My great service",
      body: "Maecenas vel elit sodales magna luctus placerat id at leo. Integer et felis blandit, dictum ex eu, feugiat felis. Phasellus vitae sapien id erat posuere tempus ut nec tortor. 
      Duis porttitor placerat porttitor. Suspendisse at purus vulputate, finibus ipsum vel, gravida arcu. Vivamus pulvinar lorem sed odio tincidunt lobortis. Integer a fermentum metus, vel cursus nisl. Curabitur varius cursus quam at vestibulum. In leo magna, pellentesque et quam vel, ultricies elementum erat. Morbi id odio vitae mauris mollis euismod in sed lacus. Aenean porta sem sit amet ligula imperdiet, a elementum nunc elementum. Suspendisse potenti. Etiam commodo luctus metus, ut vehicula neque efficitur et.",
      main_image: "https://place-hold.it/600x400",
      thumb_image: "https://place-hold.it/300x200"
		)
end

puts "9 portfolio created"