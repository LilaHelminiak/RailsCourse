class QuizController < ApplicationController

  def index
	@myCategories = Word.where(:user_id => current_user.id).select(:category).distinct
  end
  
  def new
	wordArray= Word.where(:user_id => current_user.id).where(:category => params[:category]).order("score ASC").take(10)
	@word = wordArray.sample
  end
  
end
