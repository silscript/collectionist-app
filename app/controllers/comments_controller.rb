class CommentsController < ApplicationController

  # Create the create route.
  def create
    @print = Print.find(params[:print_id])
    @comment = @print.comments.create(comment_params)
    @comment.user = current_user
    @comment.save

    # Redirect it to the show page of the print.
    redirect_to print_path(@print)
  end

  # Create the destroy route.
  def destroy
    @print = Print.find(params[:print_id])
    @comment = @print.comments.find(params[:id])
    @comment.destroy
    
    # Redirect to the show page of the print.
    redirect_to print_path(@print)
  end

  # Add strong params for privacy.
  private

  def comment_params
    params.require(:comment).permit(:username, :content)
  end

end