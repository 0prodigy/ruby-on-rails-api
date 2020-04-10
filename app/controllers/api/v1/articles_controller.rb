module Api
    module V1
    class ArticlesController < ApplicationController

        def index

            @articles = Article.order('created_at DESC');
            # render json: {status:'SUCCESS', message: 'Loaded articles', data:@articles},status: :ok
            
            render "articles/index"
        end
        def show 
            article = Article.find(params[:id]);
            # render json: {status:'SUCCESS', message: 'Loaded articles', data:article},status: :ok
            render "articles/show"

        end
        def create 
            article = Article.new(article_params)
            if article.save 
                render json: {status:'SUCCESS', message: 'Save articles', data:article},status: :ok
            else 
                render json: {status:'ERROR', message: 'Article not saved', data:article.errors},status: :unprocessable_entity
            end
        end    
        def destroy 
            article = Article.find(params[:id]);
            article.destroy
            render json:{status:"SUCCESS", message: "Deleted", data: article}, status: :ok
        end
        def update 
            article = Article.find(params[:id]);
            if article.update_attributes(article_params) 
                render json: {status:'SUCCESS', message: 'Update articles', data:article},status: :ok
            else 
                render json: {status:'ERROR', message: 'Article not update', data:article.errors},status: :unprocessable_entity
            end
        end

        private 
        def article_params 
        params.require(:article).permit(:title, :body)
        end
    end
    end
    
end