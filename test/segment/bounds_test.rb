require 'test/unit'
require 'ruby-geometry'

class BoundsTest < Test::Unit::TestCase
  include RubyGeometry

  def setup
    @segment = RubyGeometry::Segment.new(Point.new(1, 1), Point.new(2, 2))
  end

  def test_leftmost_endpoint    
    assert_equal Point.new(1, 1), @segment.leftmost_endpoint
  end

  def test_rightmost_endpoint
    assert_equal Point.new(2, 2), @segment.rightmost_endpoint
  end

  def test_topmost_endpoint
    assert_equal Point.new(2, 2), @segment.topmost_endpoint
  end

  def test_botommost_endpoint
    assert_equal Point.new(1, 1), @segment.bottommost_endpoint
  end
end