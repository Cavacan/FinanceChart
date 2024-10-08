class FinancesController < ApplicationController
  before_action :set_finance, only: %i[ show edit update destroy ]

  # GET /finances or /finances.json
  def index
    @finances = Finance.all
  end

  # GET /finances/1 or /finances/1.json
  def show
  end

  # GET /finances/new
  def new
    @finance = Finance.new
  end

  # GET /finances/1/edit
  def edit
  end

  # POST /finances or /finances.json
  def create
    @finance = Finance.new(finance_params)

    respond_to do |format|
      if @finance.save
        format.html { redirect_to finance_url(@finance), notice: "Finance was successfully created." }
        format.json { render :show, status: :created, location: @finance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finances/1 or /finances/1.json
  def update
    respond_to do |format|
      if @finance.update(finance_params)
        format.html { redirect_to finance_url(@finance), notice: "Finance was successfully updated." }
        format.json { render :show, status: :ok, location: @finance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finances/1 or /finances/1.json
  def destroy
    @finance.destroy!

    respond_to do |format|
      format.html { redirect_to finances_url, notice: "Finance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finance
      @finance = Finance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def finance_params
      params.require(:finance).permit(:date, :amount)
    end
end
