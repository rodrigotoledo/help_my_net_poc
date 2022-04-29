require 'faker'
10.times.each do
  Fix.create(professional: Faker::Name.name_with_middle, user: Faker::Name.name_with_middle, address: Faker::Address.full_address, description: Faker::Lorem.paragraph)
end