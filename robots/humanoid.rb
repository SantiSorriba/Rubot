require_relative 'robot'
require_relative '../sources/battery'

class Humanoid<Robot

  include Battery

  def self.show_abilites
    puts "Humano: Comportamiento de humano"
  end

end
