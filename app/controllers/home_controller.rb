class HomeController < ApplicationController
    def top
    end
    
    def search
        @books = Book.all
    end
    
    def search_book
        @content = params[:content]
        @model = params[:model]
        @books = Book.search_for(@content, @model)
        render "home/search"
    end
end
