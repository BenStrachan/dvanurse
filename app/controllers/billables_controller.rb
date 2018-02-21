class BillablesController < ApplicationController
  before_action :set_billable, only: [:show, :edit, :update, :destroy]

  # GET /billables
  # GET /billables.json
  def index
    @billables = Billable.all
  end

  # GET /billables/1
  # GET /billables/1.json
  def show
  end

  # GET /billables/new
  def new
    @billable = Billable.new
  end

  # GET /billables/1/edit
  def edit
  end

  # POST /billables
  # POST /billables.json
  def create
    @billable = Billable.new(billable_params)

    respond_to do |format|
      if @billable.save
        format.html { redirect_to @billable, notice: 'Billable was successfully created.' }
        format.json { render :show, status: :created, location: @billable }
      else
        format.html { render :new }
        format.json { render json: @billable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billables/1
  # PATCH/PUT /billables/1.json
  def update
    respond_to do |format|
      if @billable.update(billable_params)
        format.html { redirect_to @billable, notice: 'Billable was successfully updated.' }
        format.json { render :show, status: :ok, location: @billable }
      else
        format.html { render :edit }
        format.json { render json: @billable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billables/1
  # DELETE /billables/1.json
  def destroy
    @billable.destroy
    respond_to do |format|
      format.html { redirect_to billables_url, notice: 'Billable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billable
      @billable = Billable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billable_params
      params.require(:billable).permit(:item_number, :visit_type, :min_visit, :max_visit, :core_fee, :category)
    end
end
