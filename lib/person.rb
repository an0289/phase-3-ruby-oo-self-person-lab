#attr_reader you can read the value, cannot change it 
#attr_writer you can only change the value, but not read it 
class Person 
    attr_accessor :bank_account, :happiness, :hygiene 
    attr_reader :name 

    def initialize(name) 
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(value)
      @happiness =   if value > 10
                        10 
                    elsif value < 0 
                        0 
                    else 
                        value  
                    end 
    end 

    def hygiene=(value)
       @hygiene =  if value > 10
                        10 
                    elsif value < 0 
                        0 
                    else 
                        value 
                    end  
    end 

    def clean?
        self.hygiene > 7 
    end

    def happy? 
        self.happiness > 7 
    end 

    def get_paid(amount)
        self.bank_account += amount 
        "all about the benjamins"
    end 

    def take_bath 
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out 
        self.happiness += 2
         self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        friend.happiness += 3 
        self.happiness += 3 
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(friend, topic)
        case topic 
        when "politics" 
            self.happiness -= 2 
            friend.happiness -= 2 
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1 
            friend.happiness += 1  
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end 
    end 
end 
