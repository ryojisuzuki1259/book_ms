class Book < ApplicationRecord
    belongs_to :genre
    belongs_to :shelf
    has_many :cart_items
    has_many :lend_details
    
    def self.search_for(content, model)
        Book.where('title LIKE ?', '%'+content+'%')  
    end
end
