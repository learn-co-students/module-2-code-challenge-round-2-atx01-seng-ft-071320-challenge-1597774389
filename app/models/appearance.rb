class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :rating, inclusion: { in: 1..5 }
    validates_uniqueness_of :guest_id, :scope => :episode_id, message: "has already appeared on episode."
end