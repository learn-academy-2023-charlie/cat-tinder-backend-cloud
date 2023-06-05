# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


villains = [
  {
    name: 'Doctor Doom',
    age: 53,
    hobbies: 'Practicing magic. Trying to free his mothers soul from Mephistos realm. Playing with kittens',
    power: 'Mastery over science and sorcery',
    about: 'He is a vengeful, tyrannical monarch who is a powerful sorcerer and the ruler of the technologically-advanced country known as Latveria, and is so destined to prominently seek and expand his rule over the Earth as well as the entire universe, as he believes that it is the only way for them to survive.',
    evil_scheme: 'Universal domination.',
    image: 'https://www.alexrossart.com/cdn/shop/products/Doomcolor_1024x1024.jpg?v=1678370703'
  },
  {
    name: 'Venom',
    age: 20,
    hobbies: 'Bullying Peter Parker and Spider-man',
    power: 'Extremely strong and agile and can change its outer appearance.',
    about: 'Venom is the result of an alien symbiote merged with a human holding a bitter grudge against Peter Parker.',
    evil_scheme: 'To live in symbiosis with host.',
    image: 'https://www.alexrossart.com/cdn/shop/products/VENOM_03674f1a-8087-439b-8179-e6ce783f5df2_1024x1024.jpg?v=1676642964'
  },
  {
    name: 'Mystique',
    age: 92,
    hobbies: 'Committing robberies. Impersonating other people.',
    power: 'Shapeshifting.',
    about: 'A mutant shapeshifter with the ability to molecularly shift the formation of her biological cells at will to change her appearance and thereby assume the form of other humans and animals.',
    evil_scheme: 'Unknown.',
    image: 'https://www.alexrossart.com/cdn/shop/products/Mystique_1024x1024.jpg?v=1675177841'
  }
]

villains.each do |each_villain|
  Villain.create each_villain
  puts "creating villain #{each_villain}"
end