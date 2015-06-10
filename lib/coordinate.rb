#Job: represents cell in 2D plane
class Coordinate
  attr_reader :x,:y
  
  def initialize(x, y)
    @x = x
    @y = y
  end

  def is_adjacent(other)
    (other.x - x).abs < 2 && (other.y - y).abs < 2
  end

  def left
    new_x = @x - 1
    new_y = @y
    Coordinate.new(new_x, new_y)
  end

  def right
    new_x = @x + 1
    new_y = @y
    Coordinate.new(new_x, new_y)
  end

  def top
    new_x = @x
    new_y = @y +1
    Coordinate.new(new_x, new_y)
  end

  def bottom
    new_x = @x
    new_y = @y - 1
    Coordinate.new(new_x, new_y)
  end

  def top_left
    new_x = @x - 1
    new_y = @y + 1
    Coordinate.new(new_x, new_y)
  end

  def top_right
    new_x = @x + 1
    new_y = @y + 1
    Coordinate.new(new_x, new_y)
  end

  def bottom_left
    new_x = @x - 1
    new_y = @y - 1
    Coordinate.new(new_x, new_y)
  end

  def bottom_right
    new_x = @x + 1
    new_y = @y - 1
    Coordinate.new(new_x, new_y)
  end

  def ==(other)
    if(self.class == other.class && other) 
      other.x == @x && other.y == @y
    end
  end

  def hash
    [x,y].hash
  end

end