class ShelvesController < ApplicationController
    def index
        @shelves = Shelf.all
        @shelf = Shelf.new
    end
    
    def create
        @shelf = Shelf.new(shelf_params)
        @shelf.save
        redirect_to shelves_path
    end
    
    def update
        @shelf = Shelf.find(params[:id])
        @shelf.update(shelf_is_active_params)
        redirect_to shelves_path
    end
    
    private
    
    def shelf_params
        params.require(:shelf).permit(:name, :is_active)
    end
    
    def shelf_is_active_params
        params.require(:shelf).permit(:is_active)
    end
end
