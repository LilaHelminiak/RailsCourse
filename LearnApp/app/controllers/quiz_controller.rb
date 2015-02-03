class QuizController < ApplicationController

  def index
	@myCategories = Word.where(:user_id => current_user.id).select(:category).distinct
	adminIds = User.where(:admin => true).select(:id)
	@generalCategories = Word.where(user_id: adminIds).select(:category).distinct
  end
  
  def new
	if params[:myCategory]
		wordArray= Word.where(:user_id => current_user.id).where(:category => params[:category])
	else
		adminIds = User.where(:admin => true).select(:id)
		wordArray = Word.where(user_id: adminIds).where(:category => params[:category])
	end
	@words = wordArray.sample(10)
  end
  
end
