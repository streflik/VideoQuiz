class UsersController < ApplicationController

  before_filter :authenticate_user!
  #before_filter :verify_admin
  layout "admin"
  load_and_authorize_resource

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create params[:user] do |u|
      u.password = SecureRandom.base64(6)
      u.password_confirmation = u.password
      u.role = "USER" if cannot?(:manage,@user)
    end
    if @user.save
      redirect_to users_path, :notice=>"Pomyślnie dodano użytkownika"
    else
      render :action=>:new

    end
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to users_path, :notice => t("updated")
    else
      render :action => "edit"
    end
  end

end
