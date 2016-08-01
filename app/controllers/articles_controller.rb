class ArticlesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @articles = @category.articles
  end

  def new
    @article = Article.new
    @category = Category.find(params[:category_id])
  end

  def create
    @article = Article.new(articles_params)
    @article.category = Category.find(params[:category_id])
    @article.save

    redirect_to category_articles_path
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def update
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
    @article.update(articles_params)

    redirect_to category_article_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to category_articles_path
  end

  private

  def articles_params
    params.require(:article).permit(:title, :email, :content, :price)
  end
end
