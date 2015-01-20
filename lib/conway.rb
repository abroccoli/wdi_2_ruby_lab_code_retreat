require 'pry-byebug'

class Board
  def initialize(array)
    @board = array
  end

  def find_cell(num1,num2)
    @board.find{ |item| item.x == num1 && item.y == num2 }
  end
end

class Cell

  def initialize(status, x, y)
    @status = status
    @x = x
    @y = y
  end

  def x
    @x
  end

  def y
    @y
  end

  def is_alive?
    @status == 1
  end

end
