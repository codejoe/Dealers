class CommentsController < ApplicationController
  before_action :set_user

  def index
    @comments = Comment.all
    @user = User.find(params[:user_id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @user.comments.create(comment_params)
    respond_to do |format|
      if @comment.save
        format.html {redirect_to(user_comments_path(@user))}
      end
    end
  end

  private 

    def set_user
      @user = User.find(params[:user_id])
    end

    def comment_params      
      params.require(:comment).permit(:content)
    end
end
