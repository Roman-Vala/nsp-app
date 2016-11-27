class FinishesController < ApplicationController
  before_action :set_finish, only: [:show, :edit, :update, :destroy]

  # GET /finishes
  # GET /finishes.json
  def index
    @finishes = Finish.all
  end

  # GET /finishes/1
  # GET /finishes/1.json
  def show
  end

  # GET /finishes/new
  def new
    @finish = Finish.new
  end

  # GET /finishes/1/edit
  def edit
  end

  # POST /finishes
  # POST /finishes.json
  def create
    @finish = Finish.new(finish_params)

    respond_to do |format|
      if @finish.save
        format.html { redirect_to @finish, notice: 'Finish was successfully created.' }
        format.json { render :show, status: :created, location: @finish }
      else
        format.html { render :new }
        format.json { render json: @finish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finishes/1
  # PATCH/PUT /finishes/1.json
  def update
    respond_to do |format|
      if @finish.update(finish_params)
        format.html { redirect_to @finish, notice: 'Finish was successfully updated.' }
        format.json { render :show, status: :ok, location: @finish }
      else
        format.html { render :edit }
        format.json { render json: @finish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finishes/1
  # DELETE /finishes/1.json
  def destroy
    @finish.destroy
    respond_to do |format|
      format.html { redirect_to finishes_url, notice: 'Finish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finish
      @finish = Finish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finish_params
      params.require(:finish).permit(:description, :price)
    end
end
