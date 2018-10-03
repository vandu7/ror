class Interpage1sController < ApplicationController
  before_action :set_interpage1, only: [:show, :edit, :update, :destroy]

  # GET /interpage1s
  # GET /interpage1s.json
  def index
    @interpage1s = Interpage1.all
  end

  # GET /interpage1s/1
  # GET /interpage1s/1.json
  def show
  end

  # GET /interpage1s/new
  def new
    @interpage1 = Interpage1.new
  end

  # GET /interpage1s/1/edit
  def edit
  end

  # POST /interpage1s
  # POST /interpage1s.json
  def create
    @interpage1 = Interpage1.new(interpage1_params)

    respond_to do |format|
      if @interpage1.save
        format.html { redirect_to @interpage1, notice: 'Interpage1 was successfully created.' }
        format.json { render :show, status: :created, location: @interpage1 }
      else
        format.html { render :new }
        format.json { render json: @interpage1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interpage1s/1
  # PATCH/PUT /interpage1s/1.json
  def update
    respond_to do |format|
      if @interpage1.update(interpage1_params)
        format.html { redirect_to @interpage1, notice: 'Interpage1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @interpage1 }
      else
        format.html { render :edit }
        format.json { render json: @interpage1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interpage1s/1
  # DELETE /interpage1s/1.json
  def destroy
    @interpage1.destroy
    respond_to do |format|
      format.html { redirect_to interpage1s_url, notice: 'Interpage1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interpage1
      @interpage1 = Interpage1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interpage1_params
      params.fetch(:interpage1, {})
    end
end
