class Interpage2sController < ApplicationController
  before_action :set_interpage2, only: [:show, :edit, :update, :destroy]

  # GET /interpage2s
  # GET /interpage2s.json
  def index
    @interpage2s = Interpage2.all
  end

  # GET /interpage2s/1
  # GET /interpage2s/1.json
  def show
  end

  # GET /interpage2s/new
  def new
    @interpage2 = Interpage2.new
  end

  # GET /interpage2s/1/edit
  def edit
  end

  # POST /interpage2s
  # POST /interpage2s.json
  def create
    @interpage2 = Interpage2.new(interpage2_params)

    respond_to do |format|
      if @interpage2.save
        format.html { redirect_to @interpage2, notice: 'Interpage2 was successfully created.' }
        format.json { render :show, status: :created, location: @interpage2 }
      else
        format.html { render :new }
        format.json { render json: @interpage2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interpage2s/1
  # PATCH/PUT /interpage2s/1.json
  def update
    respond_to do |format|
      if @interpage2.update(interpage2_params)
        format.html { redirect_to @interpage2, notice: 'Interpage2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @interpage2 }
      else
        format.html { render :edit }
        format.json { render json: @interpage2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interpage2s/1
  # DELETE /interpage2s/1.json
  def destroy
    @interpage2.destroy
    respond_to do |format|
      format.html { redirect_to interpage2s_url, notice: 'Interpage2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interpage2
      @interpage2 = Interpage2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interpage2_params
      params.fetch(:interpage2, {})
    end
end
