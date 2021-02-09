class Lend < ApplicationRecord
    has_many :lend_details
    belongs_to :end_user
    
    def create_lend_details(admin)
        cart_items = admin.cart_items.includes(:book)
        cart_items.each do |c|
            book = c.book
            LendDetail.create!(
                lend_id: id, 
                book_id: book.id,
                lend_status: 1
                )
        end
        cart_items.destroy_all
    end
end
