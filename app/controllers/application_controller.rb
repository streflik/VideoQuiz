class ApplicationController < ActionController::Base
  protect_from_forgery

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
