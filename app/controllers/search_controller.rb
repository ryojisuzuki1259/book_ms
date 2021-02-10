class SearchController < ApplicationController
    def search
        @content = params[:content]
        @model = params[:model]
        if @model == "end_user"
            @end_users = EndUser.search_for(@content, @model)
            render "end_users/index"
        elsif @model == "book"
            @books = Book.search_for(@content, @model)
            render "books/index"
        else
            @lends = Lend.search_for(@content, @model)
            render "lends/index"
        end
    end
end
