class BooksController < ApplicationController
    before_action :set_book, only: [ :show, :edit, :destroy ]
    
    def index
        @books = Book.all
    end
    
    def show
    end
    
    def new
        @book = Book.new
    end
    
    def edit
    end
    
    def create
        @book = Book.new(book_params)
        @book.save
        redirect_to book_path(@book)
    end
    
    def update
        @book = Book.new(book_params)
        @book.update
        redirect_to book_path(@book)
    end
    
    def destroy
        @book.destroy
        redirect_to books_path
    end
    
    private 
    
    def book_params
        params.require(:book).permit(:title, :date_publication, :genre_id, :shelf_id)
    end
    
    def set_book
        @book = Book.find(params[:id])
    end
end
