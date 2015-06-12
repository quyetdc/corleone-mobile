class DistributesController < ApplicationController
  before_action :set_distribute, only: [:show, :edit, :update, :destroy]

  # GET /distributes
  # GET /distributes.json
  def index
    @distributes = Distribute.all
  end

  # GET /distributes/1
  # GET /distributes/1.json
  def show
  end

  # GET /distributes/new
  def new
    @distribute = Distribute.create
  end

  # GET /distributes/1/edit
  def edit
  end

  # POST /distributes
  # POST /distributes.json
  def create
    @distribute = Category.find_by(params[:id]).distributes.create(distribute_params)

    respond_to do |format|
      if @distribute.save
        format.html { redirect_to @distribute, notice: 'Distribute was successfully created.' }
        format.json { render :show, status: :created, location: @distribute }
      else
        format.html { render :new }
        format.json { render json: @distribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distributes/1
  # PATCH/PUT /distributes/1.json
  def update
    respond_to do |format|
      if @distribute.update(distribute_params)
        format.html { redirect_to @distribute, notice: 'Distribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @distribute }
      else
        format.html { render :edit }
        format.json { render json: @distribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distributes/1
  # DELETE /distributes/1.json
  def destroy
    @distribute.destroy
    respond_to do |format|
      format.html { redirect_to distributes_url, notice: 'Distribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distribute
      @distribute = Distribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distribute_params
      params.require(:distribute).permit(:name, :path, :category_id)
    end
end
