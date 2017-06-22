# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def seed_image(file_name)
  if Rails.env.development?
    assets_path = "/app/assets/images/seed/"
  else
    assets_path = "/assets/image/seed/"
  end

  File.open(File.join(Rails.root, "#{assets_path}#{file_name}.jpg"))
end

pics = [
  { description: 'lorem ipsum' },
  { description: 'dolerem ipsum' },
  { description: 'consectetur adipiscing elit' },
  { description: 'ed accumsan neque erat' },
  { description: 'in pretium ipsum sollicitudin ac' },
  { description: 'lorem ipsum' },
  { description: 'dolerem ipsum' },
  { description: 'consectetur adipiscing elit' },
  { description: 'ed accumsan neque erat' },
  { description: 'in pretium ipsum sollicitudin ac' },
  { description: 'lorem ipsum' },
  { description: 'dolerem ipsum' },
  { description: 'consectetur adipiscing elit' },
  { description: 'ed accumsan neque erat' },
  { description: 'in pretium ipsum sollicitudin ac' },
  { description: 'lorem ipsum' },
  { description: 'dolerem ipsum' },
  { description: 'consectetur adipiscing elit' },
  { description: 'ed accumsan neque erat' },
  { description: 'in pretium ipsum sollicitudin ac' },
  { description: 'lorem ipsum' },
  { description: 'dolerem ipsum' },
  { description: 'consectetur adipiscing elit' },
  { description: 'ed accumsan neque erat' },
  { description: 'in pretium ipsum sollicitudin ac' },
  { description: 'lorem ipsum' },
  { description: 'dolerem ipsum' },
  { description: 'consectetur adipiscing elit' },
  { description: 'ed accumsan neque erat' },
  { description: 'in pretium ipsum sollicitudin ac' },
  { description: 'lorem ipsum' },
  { description: 'dolerem ipsum' },
  { description: 'consectetur adipiscing elit' },
  { description: 'ed accumsan neque erat' },
  { description: 'in pretium ipsum sollicitudin ac' },
  { description: 'lorem ipsum' },
  { description: 'dolerem ipsum' },
  { description: 'consectetur adipiscing elit' },
  { description: 'ed accumsan neque erat' },
  { description: 'in pretium ipsum sollicitudin ac' },
  { description: 'lorem ipsum' },
  { description: 'dolerem ipsum' },
  { description: 'consectetur adipiscing elit' },
  { description: 'ed accumsan neque erat' },
  { description: 'in pretium ipsum sollicitudin ac' },
  { description: 'lorem ipsum' }
]

# binding.pry_remote

pics.each_with_index do |attributes, i|
  attributes[:image] = seed_image(i + 1) if i + 1 <= pics.size - 1
  User.first.pics.create(attributes)
end
