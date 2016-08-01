class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    p params[:category]
    @category = Category.create(categories_params)

    redirect_to categories_path
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(categories_params)

    redirect_to categories_path
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end

  private

  def categories_params
    params.require(:category).permit(:name)
  end

end
