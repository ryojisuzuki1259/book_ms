class CartItem < ApplicationRecord
    belongs_to :book
    belongs_to :admin
end
