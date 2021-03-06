require 'test/unit'
require 'ruby-geometry'

class HorizontalTest < Test::Unit::TestCase
  include RubyGeometry

  def test_horizontal
    x, y = 0, 0
    l1 = Line.new_by_arrays([x, y], [x+1, y])
    assert l1.horizontal?
  end

  def test_not_horizontal
    x, y = 0, 0
    l1 = Line.new_by_arrays([x, y], [x+1, y+1])
    assert ! l1.horizontal?
  end
end
