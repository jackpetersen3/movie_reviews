class Movie < ApplicationRecord
    def flop?
        total_gross < 25000000     
    end
end
