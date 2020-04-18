class GiftListsController < ApplicationController
  before_action :set_gift_list, only: [:show, :update, :destroy]

  # GET /gift_lists
  def index
    @gift_lists = GiftList.all

    render json: @gift_lists
  end

  # GET /gift_lists/1
  def show
    render json: @gift_list
  end

  # POST /gift_lists
  def create
    @gift_list = GiftList.new(gift_list_params)

    if @gift_list.save
      render json: @gift_list, status: :created, location: @gift_list
    else
      render json: @gift_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gift_lists/1
  def update
    if @gift_list.update(gift_list_params)
      render json: @gift_list
    else
      render json: @gift_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gift_lists/1
  def destroy
    @gift_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift_list
      @gift_list = GiftList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gift_list_params
      params.require(:gift_list).permit(:user_id, :title, :gift_id)
    end
end
