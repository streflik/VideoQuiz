#encoding: utf-8
class UserMailer < ActionMailer::Base
 

  def reward(win_id)
    @win = Win.find(win_id)

    mail :to => @win.email,
         :subject => "Kod rabatowy w VideoQuizie #{@win.quiz.name}",
	       :from => "VideoQuiz <info@getvideoquiz.com>" ,
         :reply_to => @win.quiz.company_email
  end
end
