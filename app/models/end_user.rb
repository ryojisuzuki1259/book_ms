class EndUser < ApplicationRecord
    has_many :lends
    
    def self.search_for(content, model)
        EndUser.where(id: content)
    end
end
