class EndUsersController < ApplicationController
    before_action :set_end_user, only: [ :show, :edit, :update, :destroy ]
    
    def index
        @end_users = EndUser.all
    end
    
    def show
    end
    
    def new
        @end_user = EndUser.new
    end
    
    def edit
    end
    
    def create
        @end_user = EndUser.new(end_user_params)
        @end_user.save
        redirect_to end_user_path(@end_user)
    end
    
    def update
        @end_user.update(end_user_params)
        redirect_to end_user_path(@end_user)
    end
    
    private
    
    def set_end_user
        @end_user = EndUser.find(params[:id])
    end
    
    def end_user_params
        params.require(:end_user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :address, :telephone_number, :birthday)
    end
end
