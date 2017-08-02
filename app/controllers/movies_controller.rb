class MoviesController < ApplicationController
  
  def homepage
    render 'homepage'
  end

  def index
    @articles = Article.where(category: "Movies")
  end
end
