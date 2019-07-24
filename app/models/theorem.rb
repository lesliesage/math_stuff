class Theorem < ApplicationRecord
    has_many :mathletes
    has_many :likes
    # has_many :acolytes, through: :mathletes
end
