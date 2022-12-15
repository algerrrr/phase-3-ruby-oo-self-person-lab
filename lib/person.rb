# your code goes here
class Person
    attr_accessor :happiness, :bank_account, :hygiene
    attr_reader :name 
    # attr_writer  
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(num)
        @happiness = num.clamp(0, 10)
    end
    def hygiene=(num)
        @hygiene = num.clamp(0, 10)
    end
    def happy?
        self.happiness > 7
    end
    def clean?
        self.hygiene > 7
    end
    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene +=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"

    end
    def work_out
        self.hygiene -=3
        self.happiness +=2
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        case topic
        when "politics"
            [self, friend].each { |person| person.happiness -=2 }
            "blah blah partisan blah lobbyist"
        when "weather"
            [self, friend].each { |person| person.happiness += 1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end