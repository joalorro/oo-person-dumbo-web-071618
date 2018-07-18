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
  
  def take_bath()
    
  end

end