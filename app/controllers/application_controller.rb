class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def after_sign_in_path_for(resource)
        root_path(resource) # ログイン後に遷移するpathを設定
    end
    
    protected
    def configure_permitted_parameters #登録時に送信するカラムを追加
       devise_parameter_sanitizer.permit(:sign_up, keys: [
         :name, :organization, :prefecture, :introduction,
       ])
    end
end
