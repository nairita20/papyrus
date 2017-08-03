class ArticlesController < ApplicationController

  def new
     @article = Article.new
  end

  def index
    # binding.pry
    # @articles = Article.all.paginate(:page => params[:page], :per_page => 2)
    if params[:query].present?
      @articles = Article.search(params[:query], load: true,fields: [:title], match: :word_start)
    else
      @articles = Article.all 
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def create
  # render plain: params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
       redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
   
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:category, :title, :text, :summary)
  end

end
