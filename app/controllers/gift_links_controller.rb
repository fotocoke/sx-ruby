class GiftLinksController < ApplicationController
  before_action :set_gift_link, only: [:show, :update, :destroy]

  # GET /gift_links
  def index
    @gift_links = GiftLink.all

    render json: @gift_links
  end

  # GET /gift_links/1
  def show
    render json: @gift_link
  end

  # POST /gift_links
  def create
    @gift_link = GiftLink.new(gift_link_params)

    if @gift_link.save
      render json: @gift_link, status: :created, location: @gift_link
    else
      render json: @gift_link.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gift_links/1
  def update
    if @gift_link.update(gift_link_params)
      render json: @gift_link
    else
      render json: @gift_link.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gift_links/1
  def destroy
    @gift_link.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift_link
      @gift_link = GiftLink.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gift_link_params
      params.require(:gift_link).permit(:text)
    end
end
