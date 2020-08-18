class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    # def rating=(rating)
      
    # end

    def rating   
        @appearance = self.appearances.first
        @appearance.rating
    end

    def average_rating
        self.appearances.count
    end

    def order
      self.appearance.order(:rating)
    end
end
