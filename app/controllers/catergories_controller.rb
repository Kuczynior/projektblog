class CatergoriesController < ApplicationController
  before_action :set_catergory, only: %i[ show edit update destroy ]

  # GET /catergories or /catergories.json
  def index
    @catergories = Catergory.all
  end

  # GET /catergories/1 or /catergories/1.json
  def show
  end

  # GET /catergories/new
  def new
    @catergory = Catergory.new
  end

  # GET /catergories/1/edit
  def edit
  end

  # POST /catergories or /catergories.json
  def create
    @catergory = Catergory.new(catergory_params)

    respond_to do |format|
      if @catergory.save
        format.html { redirect_to @catergory, notice: "Catergory was successfully created." }
        format.json { render :show, status: :created, location: @catergory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @catergory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catergories/1 or /catergories/1.json
  def update
    respond_to do |format|
      if @catergory.update(catergory_params)
        format.html { redirect_to @catergory, notice: "Catergory was successfully updated." }
        format.json { render :show, status: :ok, location: @catergory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @catergory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catergories/1 or /catergories/1.json
  def destroy
    @catergory.destroy
    respond_to do |format|
      format.html { redirect_to catergories_url, notice: "Catergory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catergory
      @catergory = Catergory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def catergory_params
      params.require(:catergory).permit(:name)
    end
end
