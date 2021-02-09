class LendsController < ApplicationController
    def index
        @lends = Lend.all
    end
    
    def show
       @lend = Lend.find(params[:id]) 
       @lend_details = LendDetail.where(lend_id: @lend.id)
    end
    
    def new
        @lend = Lend.new
    end
    
    def create
        @lend = Lend.new(lend_params)
        @lend.save
        @lend.create_lend_details(current_admin)
        redirect_to lends_path
    end
    
    def confirm
        @lend = Lend.new(lend_params)
        @end_user = EndUser.find(@lend.end_user_id)
        @cart_items = CartItem.all
        render "end_user/show" if @lend.invalid?
    end
    
    private
    def lend_params
        params.require(:lend).permit(:end_user_id, :admin_id, :due_date, :amount)
    end
end
