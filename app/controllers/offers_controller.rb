class OffersController < ApplicationController
  before_action :set_params, only: [:show, :destroy, :update, :edit]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @offers = Offer.all
  end

  def show
    authorize @offer
  end

  def edit
  end

  def update
    @offer.update(offer_params)
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.save
  end

  def destroy
    @offer = Offer.destroy
  end

  private

  def set_params
    @offer = Offer.find(params[:category_id])
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :email, :address, :phone, :created_at)
  end

end
