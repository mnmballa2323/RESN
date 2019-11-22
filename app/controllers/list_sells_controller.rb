class ListSellsController < ApplicationController
  before_action :set_list_sell, only: [:show, :edit, :update, :destroy]

  # GET /list_sells
  # GET /list_sells.json
  def index
    @list_sells = ListSell.all
  end

  # GET /list_sells/1
  # GET /list_sells/1.json
  def show
  end

  # GET /list_sells/new
  def new
    @list_sell = ListSell.new
  end

  # GET /list_sells/1/edit
  def edit
  end

  # POST /list_sells
  # POST /list_sells.json
  def create
    @list_sell = ListSell.new(list_sell_params)

    respond_to do |format|
      if @list_sell.save
        format.html { redirect_to @list_sell, notice: 'List sell was successfully created.' }
        format.json { render :show, status: :created, location: @list_sell }
      else
        format.html { render :new }
        format.json { render json: @list_sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_sells/1
  # PATCH/PUT /list_sells/1.json
  def update
    respond_to do |format|
      if @list_sell.update(list_sell_params)
        format.html { redirect_to @list_sell, notice: 'List sell was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_sell }
      else
        format.html { render :edit }
        format.json { render json: @list_sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_sells/1
  # DELETE /list_sells/1.json
  def destroy
    @list_sell.destroy
    respond_to do |format|
      format.html { redirect_to list_sells_url, notice: 'List sell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_sell
      @list_sell = ListSell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_sell_params
      params.require(:list_sell).permit(:address, :unit_no, :state, :postal_code, :title, :price, :virtual_tour_url, :home_type, :finished_suqare_area, :lot_size, :year_built, :st_model_year, :hoa_dues, :basement_size, :garage_size, :description, :website, :my_views, :contact_no, :email)
    end
end
