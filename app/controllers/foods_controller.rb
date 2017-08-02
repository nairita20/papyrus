class FoodsController < ApplicationController

  def homepage
    render 'homepage'
  end

  def index
    @articles = Article.where(category: "Food")
  end

  # def show
  #   render 'show'
  # end
end
