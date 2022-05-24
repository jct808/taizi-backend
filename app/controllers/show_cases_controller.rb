class ShowCasesController < ApplicationController
  before_action :set_show_case, only: %i[ show edit update destroy ]

  # GET /show_cases or /show_cases.json
  def index
    @show_cases = ShowCase.all
  end

  # GET /show_cases/1 or /show_cases/1.json
  def show
  end

  # GET /show_cases/new
  def new
    @show_case = ShowCase.new
  end

  # GET /show_cases/1/edit
  def edit
  end

  # POST /show_cases or /show_cases.json
  def create
    @show_case = ShowCase.new(show_case_params)

    respond_to do |format|
      if @show_case.save
        format.html { redirect_to show_case_url(@show_case), notice: "Show case was successfully created." }
        format.json { render :show, status: :created, location: @show_case }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @show_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /show_cases/1 or /show_cases/1.json
  def update
    respond_to do |format|
      if @show_case.update(show_case_params)
        format.html { redirect_to show_case_url(@show_case), notice: "Show case was successfully updated." }
        format.json { render :show, status: :ok, location: @show_case }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @show_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /show_cases/1 or /show_cases/1.json
  def destroy
    @show_case.destroy

    respond_to do |format|
      format.html { redirect_to show_cases_url, notice: "Show case was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_show_case
      @show_case = ShowCase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def show_case_params
      params.require(:show_case).permit(:name)
    end
end
