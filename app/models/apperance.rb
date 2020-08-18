class Apperance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  #validation isn't quite right. 
  validates :rating, inclusion: { in: %w("1" "2" "3" "4" "5"),
    message: "%{value} is not a valid rating number" }
end
