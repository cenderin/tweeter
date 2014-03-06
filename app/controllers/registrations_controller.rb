class RegistrationsController < Devise::RegistrationsController
	layout 'tweeter'
	protected

  def after_sign_up_path_for(resource)
  	welcome_path 
  end


end