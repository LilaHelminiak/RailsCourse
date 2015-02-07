class WordsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @words = Word.where('user_id = ?', current_user.id).order("category")
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
   
  def edit
    @word = Word.find(params[:id])  
    
  end
  
  def update
    @word = Word.find(params[:id])
    @word.update(word_params)
    if (params[:quizmode]=='true')    
        redirect_to :controller => 'quiz', :action => 'new', :category => @word.category
    else
		redirect_to :controller => 'words', :action => 'index'
	end

  end
  
  def destroy
	@word = Word.find(params[:id])
	@word.destroy
 
	redirect_to words_path
  end
  
  private
  def word_params
    params.require(:word).permit(:entry, :description, :category, :user_id, :score)
  end

end
