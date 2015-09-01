class Barracks
attr_accessor  :gold, :food
	def initialize
		@gold = 1000
		@food = 80
	end

  def can_train_footman?
    if food < 2
    	return false
    elsif gold < 150
    	return false
    else 
    	return true
    end
  end

  def train_footman 
  	if can_train_footman? == true
  		Footman.new
  	end
  end

  def can_train_peasant?
  	if food <= 5
  		return false
  	elsif gold <= 90 
  		return false
  	else
  		return true
  	end
  end

  	def train_peasant
  		if can_train_peasant? 
  			@gold -= 90
  			@food -= 5
  			Peasant.new
  		end
  	end
end
