
class Robot
    @@built_robots = 0
    @@released_robots = 0
    @@bought_robots = 0

  def initialize(nombre)
    @@built_robots += 1
    @name = nombre
    @released = false
    @bought = false
    @owner = nil
  end

  def release!
    @@released_robots += 1
    @released = true
  end

  def buy!(person)
    if @released && !@bought
      puts "El robot " + @name + " fue comprado por " + person.name
      @bought = true
      @owner = person
      @@bought_robots += 1
    else
     puts "Hubo un error al intentar comprar el robot " + @name
    end
  end

  def show_distance(amount)
    puts "Distancia que puedo recorrer: " + calculate_distance(amount).to_s + "km"
  end

  def self.show_report
    puts "Robots construidos al momento: " + @@built_robots.to_s
    puts "Robots lanzados al momento: " + @@released_robots.to_s
    puts "Robots vendidos al momento: " + @@bought_robots.to_s
  end
end
