class QuizzesController < ApplicationController

  before_filter :authenticate_customer!, :except => [:play]
  before_filter :verify_admin, :except => [:play]
  before_filter :find_quiz, :except => [:new, :create, :index]
  before_filter :find_customers, :only => [:new, :create, :edit, :update]
  layout "admin", :except => [:play]

  def play
    render :layout => "play"
  end

  def show
  end

  def index
    @quizzes = Quiz.all
  end

  def new 
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new
    @quiz.attributes = params[:quiz]
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

private

  def find_quiz
    @quiz = Quiz.find(params[:id])  
  end

  def find_customers
    @customers = Customer.all
  end

end
