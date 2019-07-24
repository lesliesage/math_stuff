class Mathlete < ApplicationRecord
    has_many :theorems
    has_many :likes
    has_many :follows, class_name: "Follow", foreign_key: "acolyte_id", dependent: :destroy
end
