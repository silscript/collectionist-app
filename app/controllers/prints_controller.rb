class PrintsController < ApplicationController

  # Create the index route.
  # Reverse the order of all print entries.
  def index
    @prints = Print.all.order(:id).reverse_order
    @variousUserPrints = Print.where.not(user_id: current_user.id).reverse_order
  end

  # Create the new route.
  # Create a new print.
  def new
    @print = Print.new
  end 

  # Create the create route.
  def create
    @print = Print.create!(print_params)

    # Redirect it to the index page.
    redirect_to action: "index"
  end

  # Create the show route.
  # Find the specific ID for each print.
  def show
    @print = Print.find(params[:id])
  end

  # Create the edit route.
  # Find the specific ID for each print.
  def edit
    @print = Print.find(params[:id])
  end

  # Create the upddate route.
  def update
    @print = Print.find(params[:id])
    @print.update(print_params)

    # Redirect it to the index page.
    redirect_to action: "index"
  end

  # Create the destroy route.
  def destroy
    @print = Print.find(params[:id])
    @print.destroy

    # Redirect it to the index page.
    redirect_to action: "index"
  end

  # Add strong params for privacy.
  # Create a help method for permissions and privacy (strong params).
  private
  
  def print_params
    params.require(:print).permit(:category, :creator_individual, :creator_company, :title, :photo, :series, :purchase_year, :purchase_price, :user_id)
  end

end