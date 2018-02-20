class ClaimDataController < ApplicationController
  before_action :set_claim_datum, only: [:show, :edit, :update, :destroy]

  # GET /claim_data
  # GET /claim_data.json
  def index
    @claim_data = ClaimDatum.all
  end

  # GET /claim_data/1
  # GET /claim_data/1.json
  def show
  end

  # GET /claim_data/new
  def new
    @claim_datum = ClaimDatum.new
  end

  # GET /claim_data/1/edit
  def edit
  end

  # POST /claim_data
  # POST /claim_data.json
  def create
    @claim_datum = ClaimDatum.new(claim_datum_params)

    respond_to do |format|
      if @claim_datum.save
        format.html { redirect_to @claim_datum, notice: 'Claim datum was successfully created.' }
        format.json { render :show, status: :created, location: @claim_datum }
      else
        format.html { render :new }
        format.json { render json: @claim_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /claim_data/1
  # PATCH/PUT /claim_data/1.json
  def update
    respond_to do |format|
      if @claim_datum.update(claim_datum_params)
        format.html { redirect_to @claim_datum, notice: 'Claim datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @claim_datum }
      else
        format.html { render :edit }
        format.json { render json: @claim_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /claim_data/1
  # DELETE /claim_data/1.json
  def destroy
    @claim_datum.destroy
    respond_to do |format|
      format.html { redirect_to claim_data_url, notice: 'Claim datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_claim_datum
      @claim_datum = ClaimDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def claim_datum_params
      params.require(:claim_datum).permit(:provider_full_name, :provider_id, :date_of_service, :client_full_name, :service)
    end
end
