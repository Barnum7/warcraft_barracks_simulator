# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'unit'
require 'pry'

class Footman < Unit
attr_reader :health_points, :attack_power
  def initialize
    @health_points = 60
    @attack_power = 10
  end
end
