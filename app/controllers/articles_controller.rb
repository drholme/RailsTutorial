class ArticlesController < ApplicationController
    def index
      #Index accion is usally placed first
      @articles = Article.all
    end
    
    def show
      #use Article.find to find the article
      #and then pass in the id parameter
      @article = Article.find(params[:id])
    end
   
  
    def new
      @article = Article.new
    end

    def create
      @article = Article.new(article_params)
     
      if @article.save
        redirect_to @article
      else
        render 'new'
      end
    end
     
    private
      #whitelisting params
      def article_params
        params.require(:article).permit(:title, :text)
      end
    


end
