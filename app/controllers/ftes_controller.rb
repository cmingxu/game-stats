class FtesController < ApplicationController
  before_action :set_fte, only: [:show, :edit, :update, :destroy]

  # GET /ftes
  # GET /ftes.json
  def index
    @ftes = Fte.all
  end

  # GET /ftes/1
  # GET /ftes/1.json
  def show
  end

  # GET /ftes/new
  def new
    @fte = Fte.new
  end

  # GET /ftes/1/edit
  def edit
  end

  # POST /ftes
  # POST /ftes.json
  def create
    @fte = Fte.new(fte_params)

    respond_to do |format|
      if @fte.save
        format.html { redirect_to @fte, notice: 'Fte was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fte }
      else
        format.html { render action: 'new' }
        format.json { render json: @fte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ftes/1
  # PATCH/PUT /ftes/1.json
  def update
    respond_to do |format|
      if @fte.update(fte_params)
        format.html { redirect_to @fte, notice: 'Fte was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ftes/1
  # DELETE /ftes/1.json
  def destroy
    @fte.destroy
    respond_to do |format|
      format.html { redirect_to ftes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fte
      @fte = Fte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fte_params
      params.require(:fte).permit(:player_id, :step, :pass_time, :app_id)
    end
end
