class OffersController < ApplicationController
  #
  # -- klasa ofert handlowych (ogłoszenia, sklepy, aukcje)
  #

  # ---------------------------------------------

  def new
  end

  # ---------------------------------------------

  def create
    # render text: params[:offer].inspect
    # -- dane z formularza
    @offer = Offer.new(offer_params)
    # -- dodatkowe inicjalizacje
    @offer.idx    = ApplicationController.time1.strftime('%Y%m%d%H%M%S') #"7987987"
    @offer.otype  = "1"
    @offer.ostat  = "a"
    @offer.vcount = 0
    # --
    if @offer.save
      redirect_to @offer
    else
      render 'new'
    end
  end

  # ---------------------------------------------

  def show
    @offer = Offer.find(params[:id])
    @offer.vcount += 1
    @offer.update( vcount: @offer.vcount )
  end

  # ---------------------------------------------

  def edit
    @offer = Offer.find(params[:id])
  end

  # ---------------------------------------------

  def update
    @offer = Offer.find(params[:id])
    if @offer.update( params[:offer].permit(:title,:text,:tbegin,:tend,:price,:seller) )
      redirect_to @offer
    else
      render 'edit'
    end
  end

  # ---------------------------------------------

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to offers_path
  end

  # ---------------------------------------------

  def index
    @offers = Offer.all
  end

  # ---------------------------------------------

  private
    def offer_params
      params.require(:offer).permit(:title, :text, :tbegin, :tend, :price, :seller)
    end

  # ---------------------------------------------

end
