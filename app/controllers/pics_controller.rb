class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, expect: [:index, :show]
  before_action :correct_user, only: [:edit, :upadate, :destroy]

  # GET /pics
  # GET /pics.json
  def index
    @pics = Pic.all.order("created_at DESC").paginate(page: params[:page], per_page: 30)
  end

  # GET /pics/1
  # GET /pics/1.json
  def show
  end

  # GET /pics/new
  def new
    @pic = current_user.pics.new
  end

  # GET /pics/1/edit
  def edit
  end

  # POST /pics
  # POST /pics.json
  def create
    @pic = current_user.pics.new(pic_params)

    respond_to do |format|
      if @pic.save
        format.html { redirect_to pics_path }
        format.json { render :show, status: :created, location: @pic }
      else
        format.html { render :new }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pics/1
  # PATCH/PUT /pics/1.json
  def update
    respond_to do |format|
      if @pic.update(pic_params)
        format.html { redirect_to pics_path }
      else
        format.html { render :edit }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pics/1
  # DELETE /pics/1.json
  def destroy
    @pic.destroy
    respond_to do |format|
      format.html { redirect_to pics_url, notice: 'Pic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic
      @pic = Pic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pic_params
      params.require(:pic).permit(:description, :image)
    end

    def correct_user
      @pic = current_user.pics.find_by(id: params[:id])

      redirect_to pics_path if @pic.nil?
    end
end
