class Person
  attr_reader :name
  attr_accessor :bank_account

  def initialize name, bank_account = 25, happiness=8, hygiene=8
      @name = name
      @bank_account = bank_account
      @happiness = happiness
      @hygiene = hygiene
  end

  def happiness
      @happiness
  end

  def happiness=(value)
      @happiness = if value > 10
          10
      elsif value < 0
          0
      else value
      end
  end

  def hygiene
      @hygiene
  end

  
  def hygiene=(val)
      @hygiene = if val > 10
          10
      elsif val < 0
          0
      else val
      end
  end

  def happy?
      @happiness > 7 ? true : false
  end

  def clean?
      @hygiene > 7 ? true : false
  end

  def get_paid amount
      @bank_account += amount
      "all about the benjamins"
  end

  def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
      self.hygiene -= 3
      self.happiness += 2
      "♪ another one bites the dust ♫"
  end

  def call_friend param
      self.happiness += 3
      param.happiness += 3
      "Hi #{param.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (person_1, topic)
      case topic
      when "politics"
          self.happiness -= 2
          person_1.happiness -= 2
          "blah blah partisan blah lobbyist"
      when "weather"
          self.happiness += 1
          person_1.happiness += 1
          "blah blah sun blah rain"
      else
          "blah blah blah blah blah"
      end        
  end
end