class Person 
  
  def initialize(name) 
    @name = name
    @bank = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def clean(@hygiene)
    @hygiene > 7 ? true : false
  end
  
  def happy(@happiness)
    @happiness > 7 ? true : false
  end
  
  def mod_pts(action, num, stats)
    if action == "Increase"
      stats + num <= 10 ? stats += num : stats = 10
    else
      stats - num >= 0 ? stats -= num : stats = 0
    end
  end
  
  def take_bath
    mod_pts("Increase", 4, @hygiene)
    puts 
  end
  
  
    
    
  end

end