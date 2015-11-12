class SellerChargesController < ApplicationController
  before_action :set_seller_charge, only: [:show, :edit, :update, :destroy]

  # GET /seller_charges
  # GET /seller_charges.json
  def index
    @seller = Seller.find(params[:seller_id])
    @seller_charges = @seller.seller_charges
  end

  # GET /seller_charges/1
  # GET /seller_charges/1.json
  def show
  end

  # GET /seller_charges/new
  def new
    @seller_charge = SellerCharge.new
  end

  # GET /seller_charges/1/edit
  def edit
  end

  # POST /seller_charges
  # POST /seller_charges.json
  def create
    @seller_charge = SellerCharge.new(seller_charge_params)

    respond_to do |format|
      if @seller_charge.save
        format.html { redirect_to @seller_charge, notice: 'Seller charge was successfully created.' }
        format.json { render :show, status: :created, location: @seller_charge }
      else
        format.html { render :new }
        format.json { render json: @seller_charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seller_charges/1
  # PATCH/PUT /seller_charges/1.json
  def update
    respond_to do |format|
      if @seller_charge.update(seller_charge_params)
        format.html { redirect_to @seller_charge, notice: 'Seller charge was successfully updated.' }
        format.json { render :show, status: :ok, location: @seller_charge }
      else
        format.html { render :edit }
        format.json { render json: @seller_charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seller_charges/1
  # DELETE /seller_charges/1.json
  def destroy
    @seller_charge.destroy
    respond_to do |format|
      format.html { redirect_to seller_charges_url, notice: 'Seller charge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller_charge
      @seller_charge = SellerCharge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seller_charge_params
      params[:seller_charge]
    end
end
