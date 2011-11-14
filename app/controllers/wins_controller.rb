class WinsController < ApplicationController

 def create
    @quiz = Quiz.find params[:quiz_id]
   if @quiz.codes.any? && code = @quiz.codes.shift
        @win = @quiz.wins.create params[:win] do |win|
          win.code = code
        end
        @quiz.save
        if @win.save
          Resque.enqueue DeliverReward, @win.id
          render :json => {:response => "ok"}
        else
          #taki email juz jest w bazie lub niepoprawny email lub brak
        end
      else
        #nie ma kodow
      end
  end

end
