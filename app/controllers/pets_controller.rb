class PetsController < ApplicationController
  def homepage
    render 'homepage'
  end

  def index
    @articles = Article.where(category: "Pets")
  end

  # def show
  #   render 'show'
  # end
end
