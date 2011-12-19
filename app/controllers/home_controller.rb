#encoding: utf-8
class HomeController < ApplicationController

  def index
  render :layout => "landing"
  end

end
