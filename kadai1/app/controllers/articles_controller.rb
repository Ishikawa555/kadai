class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update]

  def new
    @article = Article.new
  end

  def create
    article = Article.new(articles_params)
    if article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @articles = Article.all
  end

  def show
  end

  def edit
  end

  def update
    if @article.update(articles_params)
      redirect_to @article, notice: "記事を更新しました。"
    else
      render :edit, status: :unprocessable_entity
    end
  end  

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def articles_params
    params.require(:article).permit(:title, :content)
  end
end
