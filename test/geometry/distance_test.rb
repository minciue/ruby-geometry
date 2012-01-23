require 'test/unit'
require 'ruby-geometry'

class DistanceTest < Test::Unit::TestCase
  include RubyGeometry

  def test_trivial_cases    
    assert 1 === distance(Point.new(1, 1), Point.new(1, 2))

    assert 1 === distance(Point.new(1, 1), Point.new(2, 1))

    assert sqrt(2) === distance(Point.new(1, 1), Point.new(2, 2))
  end    
end