class ArtworksController < ApplicationController
  def homepage
    render 'homepage'
  end

  def index
    @articles = Article.where(category: "Art")
  end
  
  # def show
  #   render 'show'
  # end
end
