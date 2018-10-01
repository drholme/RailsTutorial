class ArticlesController < ApplicationController
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
