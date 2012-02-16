#encoding: utf-8
class WinsController < ApplicationController

 def create
    @quiz = Quiz.find params[:quiz_id]
   if @quiz.codes.any? && code = @quiz.codes.shift
        @win = @quiz.wins.create params[:win] do |win|
          win.code = code
        end
        @quiz.save
        if @win.save
          expire_action :controller => :quizzes, :action => :play, :id => @quiz.id
          #Resque.enqueue DeliverReward, @win.id
          UserMailer.reward(@win.id).deliver
          render :js=> "$('#coupon.pane').hide();$('#finish.pane').show();"
        else
          render :js=> "alert('Podany adres jest już w naszej bazie');"
        end
      else
        render :js=> "alert('Przykro nam, ale kody rabatowe skończyły się');"
      end
  end

end
