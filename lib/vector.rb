class Point < Vector
  def distance(point)
    x_part = (point[0] - self.point[0]) ** 2
    y_part = (point[1] - self.point[1]) ** 2
    dist = Math.sqrt(x_part + y_part)
    return dist
  end

  def self.pathlength (points*)
    dist = 0
    points.each do |point, next_point|
      dist += point.distance(next_point)
    end
    dist
  end
end
