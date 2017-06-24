require "open-uri"

def seed_image(file_name)
  open("https://s3.eu-central-1.amazonaws.com/picterest-images/static-assets/#{file_name}.jpg")
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
