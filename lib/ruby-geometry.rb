require "rubygems"
require "bundler/setup"

require "active_support"
require "active_support/core_ext/module/delegation"
require "active_support/core_ext/module/aliasing"
require "active_support/memoizable"

require 'ruby-geometry/point'
require 'ruby-geometry/segment'
require 'ruby-geometry/vector'
require 'ruby-geometry/polygon'
require 'ruby-geometry/line'
require 'ruby-geometry/bounding_box'
require 'ruby-geometry/algorithms/point_in_polygon'

module RubyGeometry
  include Math
  extend Math
  
  def distance(point1, point2)
    hypot point1.x - point2.x, point1.y - point2.y
  end

  module_function :distance
end
