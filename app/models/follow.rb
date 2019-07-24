class Follow < ApplicationRecord
    belongs_to :mathlete, class_name: "Mathlete"
    belongs_to :acolyte, class_name: "Mathlete"
end
