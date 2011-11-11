class ApplicationController < ActionController::Base
  protect_from_forgery

before_filter :instantiate_controller_and_action_names

def instantiate_controller_and_action_names
      @current_action = action_name
      @current_controller = controller_name
end 

  def is_admin?
    current_customer.email == "bartek@filmpoint.pl"
  end

  def verify_admin
    unless is_admin?
      flash[:alert] = t("denied")
      redirect_to root_path
    end
  end

end
