require 'fastercsv'
class QuizzesController < ApplicationController

  before_filter :authenticate_user!, :except => [:play, :get_questions, :check_answer, :reward]
  before_filter :find_quiz, :except => [:new, :create, :index]
  before_filter :find_customers, :only => [:new, :create, :edit, :update]
  protect_from_forgery :except => [:get_questions, :check_answer]

  load_and_authorize_resource :except => [:get_questions, :check_answer, :reward, :play]

  def play
    render :layout => "play"
  end

  def show
  end

  def index
  end

  def new
    @quiz = Quiz.new
    @question = @quiz.questions.build
  end

  def create
    @quiz = Quiz.new params[:quiz]
    @quiz.codes ||= []
    if @quiz.save
      redirect_to(@quiz, :notice => t("created"))
    else
      render :action => "new"
    end
  end

  def edit
  end

  def update
    if @quiz.update_attributes(params[:quiz])
      redirect_to(@quiz, :notice => t("updated"))
    else
      render :action => "edit"
    end
  end

  def destroy
    @quiz.destroy
    redirect_to(admin_path, :notice => t("deleted"))
  end

  def generate_codes
    @quiz.generate_codes
    render :action=>:show
  end

  def get_questions
    @question = @quiz.questions.first
    render :partial => 'show_questions'
  end

  def check_answer
    @question = @quiz.questions.find params[:question_id]
    if @question.correct.to_s == params[:answer]

      #render :json=>{:response=>"ok"}

    else
      cookies["ucc_#{@quiz.id}"] = { :value => @question.id, :expires => 1.day.from_now }
      render :js => "$('#question.pane').hide();    $('ul#tabs .current').removeClass('current');
      $('ul#tabs .third').addClass('current');$('#coupon.pane').show();$('#coupon.pane #looser').show();"
    end
  end

  def get_codes
    respond_to do |f|
      f.csv { render :text=>@quiz.codes.join(";") }
    end

  end

  def get_winners
    @wins = @quiz.wins
    respond_to :csv
  end


  #def reward
  #  if params[:email] && params[:email] =~ /^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$/
  #    if @quiz.codes.any? && code = @quiz.codes.shift
  #      @quiz.save
  #      if @quiz.wins.exists?(:email => params[:email]) && @win = @quiz.wins.create(:email=> params[:email], :code => code)
  #        Resque.enqueue DeliverReward, @win.id
          #UserMailer.reward(win_id).deliver
          #render :js=> "$('#coupon.pane').hide();$('#finish.pane').show();"
        #else
        #  render :js=> "alert('Podany adres jest już w naszej bazie');"
        #end
      #else
      #  render :js=> "alert('Przykro nam ale kody rabatowe skończyły się');"
      #
      #end
    #else
    #  render :js=> "alert('Podany adres nie jest poprawnym adresem email');"
    #
    #end
  #end
  #
  private

  def find_quiz
    @quiz = Quiz.find(params[:id])
  end

  def find_customers
    @customers = User.all
  end

end
