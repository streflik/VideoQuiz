class UserMailer < ActionMailer::Base
  default :from => "VideoQuiz <#{@win.quiz.company_email}>"
   #TODO: adres maila

  def reward(win_id)
    @win = Win.find(win_id)

    mail :to => @win.email,
         :subject => "Kod rabatowy w VideoQuizie #{@win.quiz.name}"
  end
end
