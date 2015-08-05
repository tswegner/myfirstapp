class CommentsController < ApplicationController

  # create a new comment for a product
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to products_path(@product)
  end
  
   # destroy a comment
  def destroy
  end

  private  
    def comment_params
      params.require(:comment).permit(:user_id, :body, :rating)
    end
end
