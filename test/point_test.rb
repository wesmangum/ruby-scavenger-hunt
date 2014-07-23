require "Point"
require 'minitest/autorun'

class PointTest < MiniTest::Unit::TestCase
  def test_addition_operator
    v = Point[1,1]
    assert_equal Vector[2,2], v+1
  end

  def test_shovel_functionality
    v = Point[1, 2]
    assert_equal Vector[1, 2, 3], v << 3
  end

  def test_angle_between_points_class
    v1 = Point[1, 2]
    v2= Point[2, 2]
    assert_equal 0.3217505543966423, Point.angle(v1, v2)
  end

  def test_angle_between_points_instance
    v1 = Point[1, 2]
    v2= Point[2, 2]
    assert_equal 0.3217505543966423, v1.angle(v2)
  end
end