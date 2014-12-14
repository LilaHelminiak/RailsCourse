class ArticlesController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :update, :edit] 
  before_filter :authenticate_any!
  def new
    if admin_signed_in?
      @article = Article.new
    end
  end
  
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
      
    content = @article.text.gsub(/{(.*?)}/, "") 
    
    answers = @article.text.scan(/{(.*?)}/) 
    for i in 0...answers.length
      answer = answers[i][0].split(';')
        if answer.length == 2
          content += '<input type="radio" onclick="window.location = \' '+answer[1]+' \'" \>' + answer[0] + '</br>'
        end
    end
    
    @article.text = content 
  end
  
  def create
    @article = Article.new(article_params)
 
    @article.save
    redirect_to @article
  end
  
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
  
end
