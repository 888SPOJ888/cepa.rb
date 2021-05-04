class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    def authorize_admin!
        unless current_user.admin?
            redirect_to wines_path, notice: "You must be an admin to access this section!" 
        end
    end
end
