class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    render react_component: 'Hello', props: { name: 'Jen' }
  end

  def user_home
    render user_home_path
  end
 # protected
   def after_sign_in_path_for(resource)
    #  sign_in_url = new_user_session_url
     if request.referer == sign_in_url
       super
     else
       stored_location_for(resource) || request.referer || root_path
     end
   end

  def after_sign_in_path_for(resource)
    user_home_path
  end
end
