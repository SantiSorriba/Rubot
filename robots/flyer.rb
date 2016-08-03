require_relative 'robot'
require_relative '../sources/battery'

class Flyer < Robot

  include Battery

  def self.show_abilites
    puts "Volador: Volar"
  end

end
