require 'test/unit'
require 'ruby-geometry'

class YInterceptTest < Test::Unit::TestCase
  include RubyGeometry

  def setup
    @inf = 1.0/0.0
  end

  def test_anchored_at_y_axis
    [-1, 0, 1].each do |yi|
      line = Line.new(Point.new(0, yi), Point.new(1, 1))
      assert_equal yi, line.y_intercept
    end
  end

  def test_floating
    [-1, 1].each do |slope|
      [-2, 0, 2].each do |xo|
        [-1, 0, 1].each do |yi|
          point1 = Point.new(xo, yi+slope*xo)
          point2 = Point.new(xo+1, yi+slope*(xo+1))
          line = Line.new(point1, point2)
          assert_equal yi, line.y_intercept
        end
      end
    end
  end

  def test_horizontals
    [-1, 0, 1].each do |yi|
      line = Line.new(Point.new(1, yi), Point.new(2, yi))
      assert_equal yi, line.y_intercept
    end
  end

  def test_verticals
    [-1, 0, 1].each do |xo|
      line = Line.new(Point.new(xo, 0), Point.new(xo, 1))
      assert line.y_intercept.nil?
    end
  end
end
