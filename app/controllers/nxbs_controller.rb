class NxbsController < ApplicationController
  before_action :set_nxb, only: %i[ show edit update destroy ]

  # GET /nxbs or /nxbs.json
  def index
    @nxbs = Nxb.all
  end

  # GET /nxbs/1 or /nxbs/1.json
  def show
  end

  # GET /nxbs/new
  def new
    @nxb = Nxb.new
  end

  # GET /nxbs/1/edit
  def edit
  end

  # POST /nxbs or /nxbs.json
  def create
    @nxb = Nxb.new(nxb_params)

    respond_to do |format|
      if @nxb.save
        format.html { redirect_to nxb_url(@nxb), notice: "Nxb was successfully created." }
        format.json { render :show, status: :created, location: @nxb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nxb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nxbs/1 or /nxbs/1.json
  def update
    respond_to do |format|
      if @nxb.update(nxb_params)
        format.html { redirect_to nxb_url(@nxb), notice: "Nxb was successfully updated." }
        format.json { render :show, status: :ok, location: @nxb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nxb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nxbs/1 or /nxbs/1.json
  def destroy
    @nxb.destroy

    respond_to do |format|
      format.html { redirect_to nxbs_url, notice: "Nxb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nxb
      @nxb = Nxb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nxb_params
      params.require(:nxb).permit(:nxb_name, :release_date)
    end
end
