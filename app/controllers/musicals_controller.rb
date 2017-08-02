class MusicalsController < ApplicationController
  def homepage
    render 'homepage'
  end

  def index
    @articles = Article.where(category: "Music")
  end

  # def show
  #   render 'show'
  # end
end
