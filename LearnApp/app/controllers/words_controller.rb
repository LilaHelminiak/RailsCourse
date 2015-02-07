class WordsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @words = Word.where('user_id = ?', current_user.id)
  end

  def show
    word = Word.find(params[:id])
    if word.user_id == current_user.id || User.find(word.user_id).admin?
		@word = word
	else 
		@word = nil
	end
  end

  
  def new
    @word = Word.new
    @word.user_id = current_user
  end
  
  def create
	@word = Word.new(word_params)
 
	@word.save
	redirect_to @word
  end

  
  private
  def word_params
    params.require(:word).permit(:entry, :description, :category, :user_id)
  end

end
