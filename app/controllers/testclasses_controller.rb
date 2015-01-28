class TestclassesController < ApplicationController
  before_action :set_testclass, only: [:show, :edit, :update, :destroy]

  # GET /testclasses
  # GET /testclasses.json
  def index
    @testclasses = Testclass.all
  end

  # GET /testclasses/1
  # GET /testclasses/1.json
  def show
  end

  # GET /testclasses/new
  def new
    @testclass = Testclass.new
  end

  # GET /testclasses/1/edit
  def edit
  end

  # POST /testclasses
  # POST /testclasses.json
  def create
    @testclass = Testclass.new(testclass_params)

    respond_to do |format|
      if @testclass.save
        format.html { redirect_to @testclass, notice: 'Testclass was successfully created.' }
        format.json { render :show, status: :created, location: @testclass }
      else
        format.html { render :new }
        format.json { render json: @testclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testclasses/1
  # PATCH/PUT /testclasses/1.json
  def update
    respond_to do |format|
      if @testclass.update(testclass_params)
        format.html { redirect_to @testclass, notice: 'Testclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @testclass }
      else
        format.html { render :edit }
        format.json { render json: @testclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testclasses/1
  # DELETE /testclasses/1.json
  def destroy
    @testclass.destroy
    respond_to do |format|
      format.html { redirect_to testclasses_url, notice: 'Testclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testclass
      @testclass = Testclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testclass_params
      params[:testclass]
    end
end
