class WynthoughtsController < ApplicationController
  before_action :set_wynthought, only: [:show, :edit, :update, :destroy]

  # GET /wynthoughts
  # GET /wynthoughts.json
  def index
    @wynthoughts = Wynthought.all
  end

  # GET /wynthoughts/1
  # GET /wynthoughts/1.json
  def show
  end

  # GET /wynthoughts/new
  def new
    @wynthought = Wynthought.new
  end

  # GET /wynthoughts/1/edit
  def edit
  end

  # POST /wynthoughts
  # POST /wynthoughts.json
  def create
    @wynthought = Wynthought.new(wynthought_params)

    respond_to do |format|
      if @wynthought.save
        format.html { redirect_to :back, notice: 'Wynthought was successfully created.' }
        format.json { render :show, status: :created, location: @wynthought }
      else
        format.html { render :new }
        format.json { render json: @wynthought.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wynthoughts/1
  # PATCH/PUT /wynthoughts/1.json
  def update
    respond_to do |format|
      if @wynthought.update(wynthought_params)
        format.html { redirect_to :back, notice: 'Wynthought was successfully updated.' }
        format.json { render :show, status: :ok, location: @wynthought }
      else
        format.html { render :edit }
        format.json { render json: @wynthought.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wynthoughts/1
  # DELETE /wynthoughts/1.json
  def destroy
    @wynthought.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Wynthought was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wynthought
      @wynthought = Wynthought.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wynthought_params
      params.require(:wynthought).permit(:title, :body, :suggestion_id)
    end
end
