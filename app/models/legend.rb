class Legend < ApplicationRecord
    has_many :quotes
    has_one_attached :image
end
