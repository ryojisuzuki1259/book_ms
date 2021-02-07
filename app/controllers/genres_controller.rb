class GenresController < ApplicationController
    def index
        @genres = Genre.all
        @genre = Genre.new
    end
    
    def create
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to genres_path
    end
    
    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_is_active_params)
        redirect_to genres_path
    end
    
    private
    
    def genre_params
        params.require(:genre).permit(:name)
    end
    
    def genre_is_active_params
        params.require(:genre).permit(:is_active)
    end
end
