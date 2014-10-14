class CommentsController < ApplicationController
  before_action :find_picture, only: [:new, :create]
  before_action :authenticate_user! 
  
  def new
  end

  def create
    @comment = @picture.comments.new(comments_params)
    if @comment.save
      redirect_to picture_path(@picture)
    else
      redirect_to :back, notice: 'Comment was not created'
    end
  end

  def destroy
    @comment.destroy
    redirect_to :back, notice: 'Comment was succesfully deleted'
  end

  private

  def comments_params
    params.require(:comment).permit(:body, :picture_id)
  end

  def find_picture
    @picture = Picture.find(params[:picture_id])
  end
end



