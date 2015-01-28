class Testclass2sController < ApplicationController
  before_action :set_testclass2, only: [:show, :edit, :update, :destroy]

  # GET /testclass2s
  # GET /testclass2s.json
  def index
    @testclass2s = Testclass2.all
  end

  # GET /testclass2s/1
  # GET /testclass2s/1.json
  def show
  end

  # GET /testclass2s/new
  def new
    @testclass2 = Testclass2.new
  end

  # GET /testclass2s/1/edit
  def edit
  end

  # POST /testclass2s
  # POST /testclass2s.json
  def create
    @testclass2 = Testclass2.new(testclass2_params)

    respond_to do |format|
      if @testclass2.save
        format.html { redirect_to @testclass2, notice: 'Testclass2 was successfully created.' }
        format.json { render :show, status: :created, location: @testclass2 }
      else
        format.html { render :new }
        format.json { render json: @testclass2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testclass2s/1
  # PATCH/PUT /testclass2s/1.json
  def update
    respond_to do |format|
      if @testclass2.update(testclass2_params)
        format.html { redirect_to @testclass2, notice: 'Testclass2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @testclass2 }
      else
        format.html { render :edit }
        format.json { render json: @testclass2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testclass2s/1
  # DELETE /testclass2s/1.json
  def destroy
    @testclass2.destroy
    respond_to do |format|
      format.html { redirect_to testclass2s_url, notice: 'Testclass2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testclass2
      @testclass2 = Testclass2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testclass2_params
      params[:testclass2]
    end
end
