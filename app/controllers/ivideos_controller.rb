#encoding: utf-8
class IvideosController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
    @ivideo = Ivideo.new
    @ivideo.questions.build
  end

  def create
    @ivideo = Ivideo.new params[:ivideo]
    @ivideo.codes ||= []
    if @ivideo.save
      redirect_to(@ivideo, :notice => t("created"))
    else
      render :action => "new"
    end
  end

  def edit

  end

  def update
    if @ivideo.update_attributes(params[:ivideo])
      redirect_to(@ivideo, :notice => t("updated"))
    else
      render :action => "edit"
    end
  end

  def destroy
    @ivideo.destroy
    redirect_to(admin_path, :notice => t("deleted"))
  end

  def play
    if @ivideo.movies_type == "YouTube"
      render :action =>"play_yt", :layout => "play_ivideo"
    else
      render :action =>"play_rtmp", :layout => "play_ivideo"
    end
  end

  def preview

  end

end
