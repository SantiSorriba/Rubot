
class Robot

  def initialize(nombre)
    @name = nombre
    @released = 0
    @available = 1
    @owner = nil
  end

  def release!
    @released = 1
  end

  def buy!(person)
    @available = 0
    @owner = person
    puts "El robot " + @name + " fue comprado por " + person.name
  end

end
