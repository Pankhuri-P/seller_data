class SellerCompaniesController < ApplicationController
  before_action :set_seller_company, only: [:show, :edit, :update, :destroy]

  # GET /seller_companies
  # GET /seller_companies.json
  def index
    @seller_companies = SellerCompany.all
  end

  # GET /seller_companies/1
  # GET /seller_companies/1.json
  def show
  end

  # GET /seller_companies/new
  def new
    @seller_company = SellerCompany.new
  end

  # GET /seller_companies/1/edit
  def edit
  end

  # POST /seller_companies
  # POST /seller_companies.json
  def create
    @seller_company = SellerCompany.new(seller_company_params)

    respond_to do |format|
      if @seller_company.save
        format.html { redirect_to @seller_company, notice: 'Seller company was successfully created.' }
        format.json { render :show, status: :created, location: @seller_company }
      else
        format.html { render :new }
        format.json { render json: @seller_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seller_companies/1
  # PATCH/PUT /seller_companies/1.json
  def update
    respond_to do |format|
      if @seller_company.update(seller_company_params)
        format.html { redirect_to @seller_company, notice: 'Seller company was successfully updated.' }
        format.json { render :show, status: :ok, location: @seller_company }
      else
        format.html { render :edit }
        format.json { render json: @seller_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seller_companies/1
  # DELETE /seller_companies/1.json
  def destroy
    @seller_company.destroy
    respond_to do |format|
      format.html { redirect_to seller_companies_url, notice: 'Seller company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller_company
      @seller_company = SellerCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seller_company_params
      params[:seller_company]
    end
end
