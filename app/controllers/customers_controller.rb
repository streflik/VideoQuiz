class CustomersController < ApplicationController

  before_filter :authenticate_customer!
  before_filter :verify_admin
  before_filter :find_customer, :except => [:new, :create, :index]

  def index
    @customers = Customer.all 
  end

  def new 
    @customer = Customer.new
  end

  def create
    @customer = Customer.new
    @customer.attributes = params[:customer]
    if @customer.save
      redirect_to(customers_path, :notice => t("created"))
    else
      render :action => "new"
    end    
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(params[:customer])
      redirect_to customers_path, :notice => t("updated")
    else
      render :action => "edit"
    end
  end

private

  def find_customer
    @customer = Customer.find(params[:id])  
  end

end
