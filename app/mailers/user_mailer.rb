class UserMailer < ActionMailer::Base
  default :from => "GetVideoQuiz <info@getvideoquiz.com>"
   #TODO: adres maila

  def reward(win_id)
    @win = Win.find(win_id)


    mail :to => @win.email,
         :subject => "Kod rabatowy w quizie #{@win.quiz.name}"
  end
end
