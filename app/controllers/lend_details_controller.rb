class LendDetailsController < ApplicationController
    def update
        @lend_detail = LendDetail.find(params[:id])
        @lend_detail.update(lend_detail_params)
        redirect_to lend_path(@lend_detail.lend)
    end
    
    private
    def lend_detail_params
        params.require(:lend_detail).permit(:lend_status)
    end
end
