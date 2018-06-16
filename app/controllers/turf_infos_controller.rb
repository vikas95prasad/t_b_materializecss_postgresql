class TurfInfosController < ApplicationController
  before_action :set_turf_info, only: [:show, :edit, :update, :destroy]

  # GET /turf_infos
  # GET /turf_infos.json
  def index
    @turf_infos = TurfInfo.all
  end

  # GET /turf_infos/1
  # GET /turf_infos/1.json
  def show
  end

  # GET /turf_infos/new
  def new
    @turf_info = TurfInfo.new
  end

  # GET /turf_infos/1/edit
  def edit
  end

  # POST /turf_infos
  # POST /turf_infos.json
  def create
    @turf_info = TurfInfo.new(turf_info_params)

    respond_to do |format|
      if @turf_info.save
        format.html { redirect_to @turf_info, notice: 'Turf info was successfully created.' }
        format.json { render :show, status: :created, location: @turf_info }
      else
        format.html { render :new }
        format.json { render json: @turf_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turf_infos/1
  # PATCH/PUT /turf_infos/1.json
  def update
    respond_to do |format|
      if @turf_info.update(turf_info_params)
        format.html { redirect_to @turf_info, notice: 'Turf info was successfully updated.' }
        format.json { render :show, status: :ok, location: @turf_info }
      else
        format.html { render :edit }
        format.json { render json: @turf_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turf_infos/1
  # DELETE /turf_infos/1.json
  def destroy
    @turf_info.destroy
    respond_to do |format|
      format.html { redirect_to turf_infos_url, notice: 'Turf info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turf_info
      @turf_info = TurfInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turf_info_params
      params.require(:turf_info).permit(:name, :address, :landmark, :phone, :charges, :available, :email, :phone)
    end
end
