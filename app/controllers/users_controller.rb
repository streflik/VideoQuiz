class UsersController < ApplicationController

  before_filter :authenticate_user!
  before_filter :verify_admin
  layout "admin"

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to admin_path, :notice => t("updated")
    else
      render :action => "edit"
    end
  end

end
