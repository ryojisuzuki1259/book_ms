class LendDetail < ApplicationRecord
    belongs_to :lend
    belongs_to :book
end
