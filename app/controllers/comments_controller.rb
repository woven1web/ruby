class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @articles = Article.find(params[:article_id])
<<<<<<< HEAD
    @comment = @articles.comments.create(params[:comment].permit(:body))
=======
    @comment = @articles.comment.create(params[:comment].permit(:body))
>>>>>>> comments
    @comment.user_id = current_user.id if current_user
    
    
    if @comment.save
      redirect_to article_path(@articles), notice: "Your comment has been saved."
    else
      redirect_to 'new'
  end
end
  
  def update
    @articles = Article.find(params[:article_id])
    @comment = @articles.comments.find(params[:id])
    
    if @comment.update(params[:comment].permit(:body))
      redirect_to article_path(@articles), notice: "Your comment has been updated."
    else
      render 'edit'
    end
  end
  
  def edit
    @articles = Article.find(params[:article_id])
<<<<<<< HEAD
    @comment = @articles.comments.find(params[:id])
=======
    @comment = @article.comments.find(params[:id])
>>>>>>> comments
  end
  
  def destroy
    @articles = Article.find(params[:article_id])
    @comment = @articles.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@articles), notice: "Your comment has been deleted."
  end
  
  
end
