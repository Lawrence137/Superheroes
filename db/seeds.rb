puts 'seeding...'

10.times do
  Power.create(
    name: Faker::Superhero.power,
    description: Faker::Hipster.sentence
  )
end

10.times do
  Hero.create(
    name: Faker::Superhero.name,
    super_name: Faker::Superhero.descriptor
  )
end

strength_options = ['Strong', 'Weak', 'Average']

10.times do
  HeroPower.create(
    strength: strength_options.sample,
    power_id: Power.pluck(:id).sample,
    hero_id: Hero.pluck(:id).sample,
  )
end

puts 'Done seeding!'