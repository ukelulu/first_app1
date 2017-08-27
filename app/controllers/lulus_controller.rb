class LulusController < ApplicationController
  before_action :set_lulu, only: [:show, :edit, :update, :destroy]

  # GET /lulus
  # GET /lulus.json
  def index
    @lulus = Lulu.all
  end

  # GET /lulus/1
  # GET /lulus/1.json
  def show
  end

  # GET /lulus/new
  def new
    @lulu = Lulu.new
  end

  # GET /lulus/1/edit
  def edit
  end

  # POST /lulus
  # POST /lulus.json
  def create
    @lulu = Lulu.new(lulu_params)

    respond_to do |format|
      if @lulu.save
        format.html { redirect_to @lulu, notice: 'Lulu was successfully created.' }
        format.json { render :show, status: :created, location: @lulu }
      else
        format.html { render :new }
        format.json { render json: @lulu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lulus/1
  # PATCH/PUT /lulus/1.json
  def update
    respond_to do |format|
      if @lulu.update(lulu_params)
        format.html { redirect_to @lulu, notice: 'Lulu was successfully updated.' }
        format.json { render :show, status: :ok, location: @lulu }
      else
        format.html { render :edit }
        format.json { render json: @lulu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lulus/1
  # DELETE /lulus/1.json
  def destroy
    @lulu.destroy
    respond_to do |format|
      format.html { redirect_to lulus_url, notice: 'Lulu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lulu
      @lulu = Lulu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lulu_params
      params.require(:lulu).permit(:title, :description)
    end
end
