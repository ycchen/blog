class CommentsController < ApplicationController
  # POST /comments
  # POST /comments.json
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])

    respond_to do |format|
      format.html {redirect_to @post}
      format.js
    end
    
  end



  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    redirect_to @comment.post
  end
end
