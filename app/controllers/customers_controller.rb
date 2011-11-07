class CustomersController < ApplicationController

  before_filter :authenticate_customer!
  before_filter :verify_admin
  layout "admin"

  def index
    @customers = Customer.all 
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    if @customer.update_attributes(params[:user])
      redirect_to admin_path, :notice => t("updated")
    else
      render :action => "edit"
    end
  end

end
