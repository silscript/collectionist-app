class CommentsController < ApplicationController

  # Create the create route.
  def create
    @print = Print.find(params[:print_id])

    # you can shorten the following three lines to one line like so:
    # (provided you follow the advice below in `comment_params`

    # @comment = current_user.comments.create(comment_params)
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
    # if you always want to include the print_id in comment params, you can
    # merge the comment params (data from the form), with the print_id in params
    # like so:
    # params.require(:comment).permit(:username, :content).merge(print_id: params[:print_id])
    # this way, the comment params will include the print_id to set for the new comment
    
    params.require(:comment).permit(:username, :content)
  end

end
