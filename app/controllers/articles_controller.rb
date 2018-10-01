class ArticlesController < ApplicationController
    def index
      #use Article.find to find the article
      #and then pass in the id parameter
      @articles = Article.all
    end
    
    def show
      #use Article.find to find the article
      #and then pass in the id parameter
      @article = Article.find(params[:id])
    end
   
    def new
    end

    def create
      #whitelisting controller parameters
      @article = Article.new(params.require(:article).permit(:title, :text))

      #article.save will save model in the database
      @article.save
      redirect_to @article
    end
end
