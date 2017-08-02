class LiterariesController < ApplicationController
  def homepage
    render 'homepage'
  end

  def index
    @articles = Article.where(category: "Literature")
  end

#   def show
#     render 'show'
#   end
end
