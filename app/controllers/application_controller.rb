class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resource)
		case resource

		when Admin
		  admin_dams_path
		when User
		  dams_index_path
		end
	end

	def after_sign_out_path_for(resource)
		root_path
	end
	protected
    def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    end
end
