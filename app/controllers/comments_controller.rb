class CommentsController < ApplicationController

  # create a new comment for a product
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    @comments = @product.comments.all.order("created_at DESC")
    @comments = @comments.paginate(:page => params[:page], :per_page => 8)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @product, notice: 'Review was created successfully.' }
        format.json { render :show, status: :created, location: @product }
        format.js
      else
        format.html { redirect_to @product, alert: 'Review was not saved successfully.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
  
   # destroy a comment as admin
  def destroy
    @comment = Comment.find(params[:id])
    product = @comment.product
    @comment.destroy
    redirect_to product
  end

  private  
    def comment_params
      params.require(:comment).permit(:user_id, :body, :rating)
    end
end
