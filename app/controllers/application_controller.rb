class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def after_sign_in_path_for(resource)
        root_path # ログイン後に遷移するpathを設定
    end
    
    protected
    def configure_permitted_parameters 
        added_attrs = [ :employee_number, :last_name, :first_name, :last_name_kana, :first_name_kana, :address, :telephone_number, :birthday ]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
        devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end
end
