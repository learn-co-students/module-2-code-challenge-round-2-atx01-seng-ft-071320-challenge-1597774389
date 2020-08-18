class Guest < ApplicationRecord
    has_many :appearances, through: :episodes
end
