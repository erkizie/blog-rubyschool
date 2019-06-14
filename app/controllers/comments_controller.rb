class CommentsController < ApplicationController

  before_action :authenticate_user!, :only => [:create]

  def create

  @article = Article.find(params[:article_id]) #находим определенный пост по айди
  @article.comments.create(comment_params) #создаём коммент

  redirect_to article_path(@article)

  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end

end
