class SportsController < ApplicationController
  def homepage
    render 'homepage'
  end

  def index
    @articles = Article.where(category: "Sports")
  end

  # def show
  #   render 'show'
  # end
end
