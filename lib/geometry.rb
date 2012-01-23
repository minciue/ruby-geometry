require "rubygems"
require "bundler/setup"

require "active_support"
require "active_support/core_ext/module/delegation"
require "active_support/core_ext/module/aliasing"
require "active_support/memoizable"

require 'geometry/point'
require 'geometry/segment'
require 'geometry/vector'
require 'geometry/polygon'
require 'geometry/line'
require 'geometry/bounding_box'
require 'geometry/algorithms/point_in_polygon'

module Geometry
  include Math
  extend Math
  
  def distance(point1, point2)
    hypot point1.x - point2.x, point1.y - point2.y
  end

  module_function :distance
end
