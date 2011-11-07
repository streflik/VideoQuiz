class WinsController < ApplicationController

 def create
    @win = Win.create(params[:win]) do |c|
      c.quiz_id = params[:quiz_id]
    end
    if @win.save
      # zaktualizowanie liczby dostępnych kuponów
      @win.quiz.update_attribute :coupons_left, @win.quiz.coupons_left - 1
      # wysłanie do winnersa maila z kuponem
        # todo
      redirect_to @win.quiz # todo: ajax notify thanks
    else
      redirect_to @win.quiz # todo: ajax notify fail
    end
  end

end
