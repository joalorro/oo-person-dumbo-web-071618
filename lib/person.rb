require "pry"

class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25.00
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
  	if happiness > 10
  		happiness = 10
  	elsif happiness < 0
  		happiness = 0
  	end
  	@happiness = happiness
  end

  def hygiene=(hygiene)
  	if hygiene > 10
  		hygiene = 10
  	elsif hygiene < 0
  		hygiene = 0
  	end
  	@hygiene = hygiene
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def happy?
    self.happiness > 7 ? true : false
  end

  # def mod_pts(action, num,stats)
  #   if action == "Increase"
  #     stats + num <= 10 ? stats += num : stats = 10
  #   else
  #     stats - num >= 0 ? stats -= num : stats = 0
  #   end
  # end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    # @happiness = mod_pts("Increase", 2, @happiness)
    self.happiness += 2

    # @hygiene = mod_pts("Decrease", 3, @hygiene)
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def get_paid(salary)
  	self.bank_account += salary
  	"all about the benjamins"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)

    case topic.downcase
    when "politics"
      person.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    when "weather"
      person.happiness += 1
      self.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end

  end


end

#john = Person.new("John")
#john.take_bath

#puts john.hygiene
#Person.all

#obj = 'hello'
#case obj.class
#when String
#  print('It is a string')
#when Fixnum
#  print('It is a number')
#else
#  print('It is not a string')
#end
