class ArticlesController < ApplicationController
  def new
     @article = Article.new
  end

  def create
     article = Article.new(user_params)

     if article.save
       redirect_to root_path
     else
       render :new
     end
   end

   


  def index
  end

  def show
  end

  def edit
  end

  private

     def articles_params
       params.require(:article).permit(:title, :content)
     end
end


