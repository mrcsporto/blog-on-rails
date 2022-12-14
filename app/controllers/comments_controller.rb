class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]
  before_action :authenticate_user!


  def edit
  end

  def destroy
    @comment.destroy
    redirect_to @comment.post, notice: "Comment was successfully destroyed."
  end


  def create
    comment = Comment.create!(comments_params)
    redirect_to comment.post, notice: "Comentário enviado com sucesso!"
  end

  private 

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comments_params
    params.require(:comment).permit(:post_id, :author, :body)
  end
end