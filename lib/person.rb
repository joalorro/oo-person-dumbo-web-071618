class Person 
  
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  
  def initialize(name) 
    @name = name
    @bank_account = 25.00
    @happiness = 8
    @hygiene = 8
  end
  
  def clean
    @hygiene > 7 ? true : false
  end
  
  def happy
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
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    mod_pts("Increase", 2, @happiness)
    mod_pts("Decrease", 3, @hygiene)
  end

end