class Book < ApplicationRecord
    belongs_to :genre
    belongs_to :shelf
    has_many :cart_items
    has_many :lend_details
end
