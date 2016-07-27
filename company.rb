require_relative 'robots/flyer'
require_relative 'robots/humanoid'
require_relative 'robots/miner'
require_relative 'person'

puts "Construyendo los robots...\n\n"
flyer_robot_1 = Flyer.new('Flyer Robot One')
humanoid_robot_1 = Humanoid.new('Humanoid Robot One')
miner_robot_1 = Miner.new('Miner Robot One')

flyer_robot_2 = Flyer.new('Flyer Robot Two')

puts "Lanzando los robots...\n\n"
flyer_robot_1.release!
humanoid_robot_1.release!
miner_robot_1.release!

person_1 = Person.new('Jhon')
person_2 = Person.new('Rachel')

puts "Habilidades de los tipos de robots:"
Flyer.show_abilites
Humanoid.show_abilites
Miner.show_abilites

puts "\n\nComprando robots..."
miner_robot_1.buy!(person_1)
