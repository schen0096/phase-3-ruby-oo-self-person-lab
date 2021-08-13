# your code goes here
require 'pry'
class Person
    
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account 

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num.clamp(0,10)
    end

    def hygiene=(num)
        @hygiene = num.clamp(0,10)
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if self.hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        original = self.bank_account
        paid = original + amount
        self.bank_account = paid
        "all about the benjamins"
    end

    def take_bath
        original = self.hygiene
        clean = original + 4
        self.hygiene = clean
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        original_hygiene = self.hygiene
        original_happiness = self.happiness
        dirty = original_hygiene - 3
        happier = original_happiness + 2
        self.hygiene=dirty
        self.happiness=happier
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        
        original_happiness = self.happiness
        happier = original_happiness + 3
        self.happiness=happier

        friend_happiness = friend.happiness
        friend_happy = friend_happiness + 3
        friend.happiness = friend_happy

        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend,topic)
        if topic == "politics"
            original_happiness = self.happiness
            happier = original_happiness - 2
            self.happiness=happier
    
            friend_happiness = friend.happiness
            friend_happy = friend_happiness - 2
            friend.happiness = friend_happy

            return "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            original_happiness = self.happiness
            happier = original_happiness + 1
            self.happiness=happier
    
            friend_happiness = friend.happiness
            friend_happy = friend_happiness + 1
            friend.happiness = friend_happy
            
            return "blah blah sun blah rain"

        else
            return "blah blah blah blah blah"
        end
    end

end
