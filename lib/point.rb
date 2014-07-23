require 'matrix'

class Point < Vector
  def distance(point)
    x_part = (point[0] - self.point[0]) ** 2
    y_part = (point[1] - self.point[1]) ** 2
    dist = Math.sqrt(x_part + y_part)
    return dist
  end

  def self.pathlength (*points)
    raise ArgumentError if points.length < 2
    dist = 0
    (points.length - 1).times do |i|
      dist += points[i].distance(points[i+1])
    end
    # points.each { |point, next_point| dist += point.distance(next_point) }
    dist
  end

  def +(num)
    (self.to_a.length).times do |i|
      self[i] = self[i].to_i + num
    end
    self
  end

  def <<(num)
    Point.elements(self.to_a << num)
  end

  def self.angle(point1, point2)
    top = (point1[0] * point2[0]) + (point1[1] * point2[1])
    bottom_1 = Math.sqrt((point1[0]**2) + (point2[0]**2))
    bottom_2 = Math.sqrt((point1[1]**2) + (point2[1]**2))
    cos = (top)/(bottom_1 * bottom_2)
    deg = Math.acos(cos)
    deg
  end

  def angle(point)
    Point.angle(self, point)
  end
end
