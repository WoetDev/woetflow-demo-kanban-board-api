class CardsController < ApplicationController
  before_action :set_card, only: [:update, :destroy]

  # GET /cards
  def index
    @cards = Card.all

    render json: @cards, include: [:user, :column], except: [:user_id, :column_id]
  end

  # POST /cards
  def create
    @card = Card.new(card_params)

    if @card.save
      render json: @card, include: [:user, :column], except: [:user_id, :column_id], status: :created, location: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cards/1
  def update
    if @card.update(card_params)
      render json: @card, include: [:user, :column], except: [:user_id, :column_id]
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards/1
  def destroy
    @card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def card_params
      params.require(:card).permit(:title, :date, :tag, :column_id, :user_id)
    end
end