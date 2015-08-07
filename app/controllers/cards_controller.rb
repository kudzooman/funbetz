class CardsController < ApplicationController
  def index
    @cards = Card.visible_to(current_user)
  end

  def new
    @card = Card.new
    authorize @card
  end

  def show
    @card = Card.find(params[:id])
    authorize @card
  end

  def create
    @card = Card.new(card_params)
    authorize @card
    if @card.save
      flash[:notice] = "That's a bet!"
      redirect_to cards_path
    else
      flash[:error] = "That didn't work. Try again."
      render :new
  end

  private
   def card_params
     params.require(:card).permit(:pick, :bet)
   end
end
