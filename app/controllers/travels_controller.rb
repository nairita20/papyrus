class TravelsController < ApplicationController

  def homepage
    render 'homepage'
  end
  
  def index
    @articles = Article.where(category: "Travel")
  end

  # def show
  #   render 'show'
  # end
  
end
