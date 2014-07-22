class Point < Vector
  attr_accessor :point

  def initialize(point_x, point_y)
    @point = Vector[point_x, point_y]
  end

  def distance_to(x2, y2)
    point = Vector[x2, y2]
    x_part = (point[0] - self.point[0]) ** 2
    y_part = (point[1] - self.point[1]) ** 2
    dist = Math.sqrt(x_part + y_part)
    dist
  end
end
